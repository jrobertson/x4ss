#!/usr/bin/env ruby

# file: x4ss.rb

# A wrapper for xfce4-screenshooter and xclip to save screenshots
# Looking for a simple command-line progam? Try scrot.

require 'c32'


class X4ss
  using ColouredText

  def initialize(savefile=nil, mouse: false, window: false, debug: false)

    @file = savefile
    @count = 1
    @mouse = mouse ? 'm' : ''
    @blob = []
    @mode = window ? :window : :fullscreen
    @debug = debug

  end

  # mode options: :window, :fullscreen
  #
  def capture(mode=@mode)
    
    blob = screenshot(mode)
    
    if @file then
    
      File.write @file % @count, blob
      
    end

    @count += 1    
    @blob << blob

  end

  def from_blob
    @blob
  end

  def record(interval: 1, duration: 6, mode: @mode)
    
    return 'interval must be 0.8 or greater' if interval < 0.8

    t = Time.now

    while(Time.now <= t+duration) do

      puts 'time: ' + Time.now.inspect
      @blob << screenshot(mode)
      sleep interval
      yield(@blob.shift) if block_given?

    end

  end

  def save(file=@file)
    
    @blob.each.with_index {|blob, i| File.write file % (i+1).to_s, blob }
        
    :saved
  end
  
  private
  
  def screenshot(mode=@mode)
    
    area = mode == :fullscreen ? 'f' : 'w'
    
    `xfce4-screenshooter -c#{area}#{@mouse}`
    `xclip -selection clipboard -target image/png -out`    
    
  end
end

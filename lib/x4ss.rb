#!/usr/bin/env ruby

# file: x4ss.rb

# A wrapper for xfce4-screenshooter and xclip to save screenshots

class X4ss

  def initialize(savefile=nil, mouse: false)

    @file = savefile
    @count = 1
    @mouse = mouse ? 't' : ''

  end

  # mode options: :window, :fullscreen
  #
  def capture(mode=:fullscreen)

    area = mode == :fullscreen ? 'f' : 'w'
    `xfce4-screenshooter -c#{area}#{@mouse}`
    @blob = `xclip -selection clipboard -target image/png -out`
    File.write @file % @count, @blob
    @count += 1
  end

  def from_blob
    @blob
  end

end

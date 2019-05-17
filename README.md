# Introducing the x4ss gem to save a screenshot

This is a Linux only solution to save screenshots using xfce4-screenshooter and xclip.

## Usage

    require 'x4ss'

    x4ss = X4ss.new '/tmp/fun.png'
    x4ss.capture

    x4ss = X4ss.new '/tmp/fun%d.png'
    x4ss.capture # saves to /tmp/fun1.png
    x4ss.capture # saves to /tmp/fun2.png


## Resources

* x4ss https://rubygems.org/gems/x4ss

xclip xfce4screenshooter screenshot image capturex4ss gem 

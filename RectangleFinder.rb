require 'sinatra'
require('./lib/rectangle')

set :bind, '0.0.0.0'

get'/' do
    @description = "This application will determine whether a rectangle is a square or not."
    erb(:input)
end

post'/output' do
    @length = params.fetch("length")
    @width = params.fetch("width")
    rectangle = Rectangle.new(@length, @width)
    if rectangle.square?
      @display = "This is a square."
    else
      @display = "This is not a square."
    end
    erb(:output)
  end
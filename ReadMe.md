27/07/18
Simple Hello World in Sinatra
Uses port 4567


Generate Gemlock file:
docker run --rm -v "$PWD":/usr/src/app -w /usr/src/app ruby:2.5 bundle install

To build:
docker build -t my-ruby-app .

To run :
docker run --rm -p 4567:4567 my-ruby-app
FROM ruby:2.5.1

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /app

COPY . /app

RUN bundle install
# RUN gem install 'sinatra' --no-doc --no-ri 

EXPOSE 4567

CMD ["ruby", "HelloWorld.rb"]
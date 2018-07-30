require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
    request.user_agent
end

set(:probability) { |value| condition {rand <= value} }

get '/chance', :probability => 0.5 do
   "0.5" 
end

get '/:name' do
    "Hello #{params['name']}!"
end

# exactly the same as above, but uses block parameters
# get '/:name' do |n|
#     "Hello #{n}!"
# end


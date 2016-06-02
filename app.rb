require 'sinatra'
require 'indico'

require './setting'

get '/' do
  Indico.sentiment_hq("I love writing code!").to_json
end

get '/img' do
  Indico.content_filtering(params['url']).to_json
end

get '/:keyword' do |keyword|
  Indico.sentiment_hq(keyword).to_json
end

helpers do
end

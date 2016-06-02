require 'sinatra'
require 'indico'

require './setting'

get '/img' do
  Indico.content_filtering(params['url']).to_json
end

get '/:keyword' do |keyword|
  Indico.sentiment_hq(keyword).to_json
end

helpers do
end

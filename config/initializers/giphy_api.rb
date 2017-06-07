require 'faraday_middleware'

GiphyApi = Her::API.new.setup url: 'http://api.giphy.com' do |c|
  c.request :json
  c.use Her::Middleware::DefaultParseJSON
  c.adapter Faraday.default_adapter
end

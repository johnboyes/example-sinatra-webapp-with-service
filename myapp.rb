# myapp.rb
require 'sinatra'
require 'rest-client'
require 'json'

get '/' do
  url = 'http://jsonplaceholder.typicode.com/users'
  JSON.parse(RestClient.get(url))[0]['name']
end

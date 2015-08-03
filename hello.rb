require 'sinatra'

configure :development do
  set :bind, '0.0.0.0'
  set :port, 3000 # Not really needed, but works well with the "Preview" menu option
end

get '/' do
  @name = %w(Amigo Oscar Viking).sample
  erb :index
end

get '/hello' do
  @visitor = params[:name]
  erb :name
end

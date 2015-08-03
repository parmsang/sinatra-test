require 'sinatra'

configure :development do
  set :bind, '0.0.0.0'
  set :port, 3000 # Not really needed, but works well with the "Preview" menu option
end

get '/' do
  "<div>
  <img src='http://bit.ly/1eze8aE'>
  </div>"
end

get '/secret' do
  'this is a secret page'
end

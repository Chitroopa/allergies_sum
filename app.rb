require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/allergies')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do

  erb(:result)
end

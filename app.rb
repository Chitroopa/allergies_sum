require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/allergies')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  @allergy = params.fetch('allergy-number').to_i.allergies()
  erb(:result)
end

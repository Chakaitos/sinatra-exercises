require 'rubygems'
require 'sinatra'
require 'pry'

set :bind, '0.0.0.0' # for Vagrant

get '/welcome/:name' do
  erb :welcome
end

get '/test' do
  erb :test
end

post '/test' do
  @name = params[:name]
  @email = params[:mail]
  @vegetarian = params[:vegetarian]
  @blood_type = params[:bloodtype]
  erb :test_summary
end

get '/dog-registration' do
  erb :dog_registration
end

get '/dog-registration-results' do
	@name = params[:name]
  @breed = params[:breed]
  @age = params[:age]
  erb :dog_registration_results
end
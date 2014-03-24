require 'rubygems'
require 'sinatra'
require 'pry'

set :bind, '0.0.0.0' # for Vagrant

get '/welcome' do
  erb :welcome
end
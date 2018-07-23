require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require_relative 'db_config' 
require_relative 'models/rider'
require_relative 'models/review'
require_relative 'models/user'

binding.pry
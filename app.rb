require 'bundler'
Bundler.require
require './models/search'
require 'sinatra/config_file'

class MyApp < Sinatra::Base
	register Sinatra::ConfigFile

	config_file './config.yml'

	get '/' do
		# @twitter = Search.new
		binding.pry
	end
end
require 'bundler'
Bundler.require
require 'sinatra/config_file'

class MyApp < Sinatra::Base
	register Sinatra::ConfigFile
	config_file 'config.yml'

	get '/' do
		@twitter = settings.twitter
		binding.pry
	end
end
require 'bundler'
Bundler.require
require './models/search'

class MyApp < Sinatra::Base


	get '/' do
		@twitter = Search.new
		erb :index
	end
end

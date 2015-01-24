require 'bundler'
Bundler.require
require './models/search'


class MyApp < Sinatra::Base

	get '/' do
		erb :index

	end

	post '/results' do
		@twitter = Search.new(params[:hashtag])
		@searched_hashtag = params[:hashtag]
		erb :results
	end

end

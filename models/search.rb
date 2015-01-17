class Search

	def initialize
		client = Twitter::REST::Client.new do |config|
		  config.consumer_key = settings.TWITTER_CONSUMER_KEY
		  config.consumer_secret = settings.TWITTER_CONSUMER_SECRET
		  config.access_token = settings.TWITTER_ACCESS_TOKEN_KEY
		  config.access_token_secret = settings.TWITTER_ACCESS_TOKEN_SECRET
		end
	end

end
require 'open-uri'

class ArticleController < ApplicationController
  	def index
		  	rss = SimpleRSS.parse open("http://feeds.christianitytoday.com/christianitytoday/mostreads")
		  	@rss = rss.items
	end

		private 
		def artcle_params

end

end
	   




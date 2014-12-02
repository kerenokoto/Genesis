require 'open-uri'

class ArticleController < ApplicationController
  	def index
		  	rss = SimpleRSS.parse open("http://feeds.christianitytoday.com/christianitytoday/mostreads")
		  	@rss = rss.items
	end

	def show
	  	agent = Mechanize.new
	  	agent.get("http://feeds.christianitytoday.com/christianitytoday/mostreads")

	  	@christian = agent.page.search(".article-body").map(&:text)
 	end
		private 
		def artcle_params

end


end
	   




class IndexController < ApplicationController
	layout "frontend"

	def index
  		@commerce = Commerce.first
  	end
end

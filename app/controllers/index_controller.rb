class IndexController < ApplicationController
	layout "frontend"

	def index
  		@commerce = Commerce.first
  		@title = "Главная"
  	end
end

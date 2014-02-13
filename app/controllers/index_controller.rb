class IndexController < ApplicationController
	layout "test"

	def index
  		@commerce = Commerce.first
  		@title = "Главная"
  	end
end

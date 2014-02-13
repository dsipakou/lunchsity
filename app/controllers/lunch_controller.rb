class LunchController < ApplicationController
	layout "frontend"
  def index
  	@file = 1
  	@title = "Комплексные обеды"
  	@lunch = Lunch.first
  	if Dir.glob(File.join('public', 'uploads', "*.xls")).size == 1
  		@file = Dir.glob(File.join('public', 'uploads', "*.xls"))
  	end
  	
  end
end

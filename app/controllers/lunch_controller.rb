class LunchController < ApplicationController
	layout "test"
  def index
  	@file = nil
  	@title = "Комплексные обеды"
  	@lunch = Lunch.first
  	if Dir.glob(File.join('public', 'uploads', 'lunch', "*.xls")).size == 1
  		@file = Dir.glob(File.join('public', 'uploads', 'lunch', "*.xls"))
  	elsif Dir.glob(File.join('public', 'uploads', 'lunch', "*.doc")).size == 1
  		@file = Dir.glob(File.join('public', 'uploads', 'lunch', "*.doc"))
  	end
  end
end

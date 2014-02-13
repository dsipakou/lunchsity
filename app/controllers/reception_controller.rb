class ReceptionController < ApplicationController
	layout 'test'
  def index
  	@title = "Фуршеты"
	@reception = Reception.first
  	if Dir.glob(File.join('public', 'uploads', 'recept', "*.xls")).size == 1
  		@file = Dir.glob(File.join('public', 'uploads', 'recept', "*.xls"))
  	elsif Dir.glob(File.join('public', 'uploads', 'recept', "*.doc")).size == 1
  		@file = Dir.glob(File.join('public', 'uploads', 'recept', "*.doc"))
  	end
  end
end

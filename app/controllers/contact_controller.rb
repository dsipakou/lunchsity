class ContactController < ApplicationController
	layout "frontend"
  def index
  	@title = "Контакты"
  	@contact = Contact.first
  end
end

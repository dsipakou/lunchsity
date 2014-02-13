class ContactController < ApplicationController
	layout "test"
  def index
  	@title = "Контакты"
  	@contact = Contact.first
  end
end

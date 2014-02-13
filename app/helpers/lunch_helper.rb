module LunchHelper
	def get_download_link
		unless @file.nil?
			link_to "здесь", "#{@file.first}", download: :download
		end
	end
end

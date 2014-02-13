module LunchHelper
	def get_xls_link
		unless @file.nil?
			link_to "download", "#{@file.first}", download: :download
		end
	end
end

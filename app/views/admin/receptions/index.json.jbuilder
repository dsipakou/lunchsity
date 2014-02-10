json.array!(@admin_receptions) do |admin_reception|
  json.extract! admin_reception, :id, :content
  json.url admin_reception_url(admin_reception, format: :json)
end

json.array!(@admin_commerces) do |admin_commerce|
  json.extract! admin_commerce, :id, :content
  json.url admin_commerce_url(admin_commerce, format: :json)
end

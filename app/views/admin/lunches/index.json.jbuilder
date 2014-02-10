json.array!(@admin_lunches) do |admin_lunch|
  json.extract! admin_lunch, :id, :content
  json.url admin_lunch_url(admin_lunch, format: :json)
end

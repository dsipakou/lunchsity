json.array!(@admin_aboutus) do |admin_aboutu|
  json.extract! admin_aboutu, :id, :content
  json.url admin_aboutu_url(admin_aboutu, format: :json)
end

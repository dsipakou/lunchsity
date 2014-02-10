json.array!(@admin_phones) do |admin_phone|
  json.extract! admin_phone, :id, :number, :operator, :phonetype
  json.url admin_phone_url(admin_phone, format: :json)
end

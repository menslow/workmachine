json.array!(@clients) do |client|
  json.extract! client, :id, :name, :address, :phone, :website, :twitter, :facebook, :background
  json.url client_url(client, format: :json)
end

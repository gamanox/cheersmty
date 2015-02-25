json.array!(@stores) do |store|
  json.extract! store, :id, :name, :description, :image, :phone, :address, :location_id, :twitter, :facebook
  json.url store_url(store, format: :json)
end

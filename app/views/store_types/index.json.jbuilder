json.array!(@store_types) do |store_type|
  json.extract! store_type, :id, :name, :description
  json.url store_type_url(store_type, format: :json)
end

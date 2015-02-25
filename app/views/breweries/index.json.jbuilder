json.array!(@breweries) do |brewery|
  json.extract! brewery, :id, :name, :description, :image
  json.url brewery_url(brewery, format: :json)
end

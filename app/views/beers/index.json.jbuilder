json.array!(@beers) do |beer|
  json.extract! beer, :id, :name, :description, :image, :family_id, :style_id, :alcohol, :country_id, :state, :brewery_id, :rating
  json.url beer_url(beer, format: :json)
end

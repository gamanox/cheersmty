class Store < ActiveRecord::Base
	has_many :prices
	has_many :beers, through: :prices
	has_and_belongs_to_many :store_types
end

class Price < ActiveRecord::Base
	belongs_to :beer
	belongs_to :store
end

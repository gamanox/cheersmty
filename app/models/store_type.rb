class StoreType < ActiveRecord::Base
	has_and_belongs_to_many :stores
end

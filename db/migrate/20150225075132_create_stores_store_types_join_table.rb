class CreateStoresStoreTypesJoinTable < ActiveRecord::Migration
  def self.up
    create_table :stores_store_types, :id => false do |t|
      t.integer :store_id
      t.integer :store_type_id
    end
 
    add_index :stores_store_types, [:store_id, :store_type_id]
  end
 
  def self.down
    drop_table :stores_store_types
  end
end


class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.text :description
      t.attachment :image
      t.integer :phone
      t.text :address
      t.integer :location_id
      t.string :twitter
      t.string :facebook

      t.timestamps
    end
  end
end

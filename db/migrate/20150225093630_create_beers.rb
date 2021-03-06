class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.text :description
      t.attachment :image
      t.integer :family_id
      t.integer :style_id
      t.decimal :alcohol, precision: 3, scale: 1
      t.integer :country_id
      t.string :state
      t.string :brewery_id
      t.integer :rating

      t.timestamps
    end
  end
end

class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.belongs_to :beer, index: true
      t.belongs_to :store, index: true
      t.decimal :price, precision: 4, scale: 2
      t.timestamps null: false
    end
  end
end

class CreateStoreTypes < ActiveRecord::Migration
  def change
    create_table :store_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

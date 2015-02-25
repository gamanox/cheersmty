class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :alpha
      t.integer :code

      t.timestamps
    end
  end
end

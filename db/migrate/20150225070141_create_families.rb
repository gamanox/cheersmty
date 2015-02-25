class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :name
      t.text :description
      t.attachment :image

      t.timestamps
    end
  end
end

class CreateBathrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :bathrooms do |t|
      t.string :size
      t.integer :number_of_toliets
      t.text :shower_condition
      t.string :address
      t.integer :price_per_use
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

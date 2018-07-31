class AddNameToBathrooms < ActiveRecord::Migration[5.2]
  def change
    add_column :bathrooms, :name, :string
  end
end

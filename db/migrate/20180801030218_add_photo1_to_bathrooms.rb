class AddPhoto1ToBathrooms < ActiveRecord::Migration[5.2]
  def change
    add_column :bathrooms, :photo1, :string
  end
end

class AddPhoto3ToBathrooms < ActiveRecord::Migration[5.2]
  def change
    add_column :bathrooms, :photo3, :string
  end
end

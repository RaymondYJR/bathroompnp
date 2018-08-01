class AddPhoto2ToBathrooms < ActiveRecord::Migration[5.2]
  def change
    add_column :bathrooms, :photo2, :string
  end
end

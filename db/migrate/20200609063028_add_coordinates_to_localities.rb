class AddCoordinatesToLocalities < ActiveRecord::Migration[5.2]
  def change
    add_column :localities, :latitude, :float
    add_column :localities, :longitude, :float
  end
end

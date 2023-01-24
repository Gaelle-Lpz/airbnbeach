class AddCoordinatesToBeaches < ActiveRecord::Migration[7.0]
  def change
    add_column :beaches, :latitude, :float
    add_column :beaches, :longitude, :float
  end
end

class RenameBeachesToBeachs < ActiveRecord::Migration[7.0]
  def self.up
    rename_table :beaches, :beachs
  end
end

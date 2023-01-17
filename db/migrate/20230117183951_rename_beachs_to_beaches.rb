class RenameBeachsToBeaches < ActiveRecord::Migration[7.0]
  def self.up
    rename_table :beachs, :beaches
  end
end

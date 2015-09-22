class RenameCirclesToKults < ActiveRecord::Migration
  def self.up
    rename_table :circles, :kults
  end
  def self.down
    rename_table :kults, :circles
  end
end

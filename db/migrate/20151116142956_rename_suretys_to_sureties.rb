class RenameSuretysToSureties < ActiveRecord::Migration
  def change
  	rename_table :suretys, :sureties
  end
end

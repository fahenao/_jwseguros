class RenameBailToSurety < ActiveRecord::Migration
  def change
  	rename_table :bails, :suretys
  end
end

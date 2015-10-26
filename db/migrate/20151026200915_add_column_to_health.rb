class AddColumnToHealth < ActiveRecord::Migration
  def change
  	add_column :healths, :comments, :text
  end
end

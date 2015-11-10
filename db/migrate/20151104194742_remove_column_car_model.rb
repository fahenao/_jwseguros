class RemoveColumnCarModel < ActiveRecord::Migration
  def change
  	remove_column :cars, :client_id
  end
end

class RemoveCarIdFromClientModel < ActiveRecord::Migration
  def change
  	remove_column :clients, :car_id
  end
end

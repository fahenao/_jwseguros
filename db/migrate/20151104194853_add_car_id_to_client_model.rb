class AddCarIdToClientModel < ActiveRecord::Migration
  def change
  	add_column :clients, :car_id, :integer
  end
end

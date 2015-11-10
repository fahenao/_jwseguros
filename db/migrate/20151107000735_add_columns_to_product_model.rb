class AddColumnsToProductModel < ActiveRecord::Migration
  def change
  	add_column :products, :client_id, :integer
  	add_column :products, :car_id, :integer
  	add_column :products, :bail_id, :integer
  	add_column :products, :health_id, :integer
  	add_column :products, :life_id, :integer
  	add_column :products, :content_id, :integer
  	add_column :products, :fire_id, :integer
  end
end

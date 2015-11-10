class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.integer :client_id
    	t.integer :car_id
    	t.integer :bail_id
    	t.integer :health_id
    	t.integer :content_id
    	t.integer :fire_id
    	t.integer :life_id

      t.timestamps null: false
    end
  end
end

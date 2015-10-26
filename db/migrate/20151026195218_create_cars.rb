class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
    	t.string :brand
    	t.integer :price
    	t.string :model
    	t.date :year
    	t.integer :use, :default => 1
    	t.integer :coverage, :default => 1
    	t.text :comments

      t.timestamps null: false
    end
  end
end

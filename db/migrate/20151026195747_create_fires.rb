class CreateFires < ActiveRecord::Migration
  def change
    create_table :fires do |t|
    	t.string :address
    	t.integer :value_of_goods
    	t.text :comments


      t.timestamps null: false
    end
  end
end

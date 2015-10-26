class CreateLives < ActiveRecord::Migration
  def change
    create_table :lives do |t|
    	t.integer :sum_assured
    	t.integer :marital_status, :default => 1 #1 => casado, 2 => soltero
    	t.text :comments

      t.timestamps null: false
    end
  end
end

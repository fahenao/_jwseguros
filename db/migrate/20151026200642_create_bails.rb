class CreateBails < ActiveRecord::Migration
  def change
    create_table :bails do |t|
    	t.string :type
    	t.integer :value
    	t.string :percentage
    	t.text :comments

      t.timestamps null: false
    end
  end
end

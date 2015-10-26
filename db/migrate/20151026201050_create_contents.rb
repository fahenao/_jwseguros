class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
    	t.string :value
    	t.string :address
    	t.text :comments

      t.timestamps null: false
    end
  end
end

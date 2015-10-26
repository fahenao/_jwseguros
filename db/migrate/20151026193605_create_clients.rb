class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
    	t.string :fullname
    	t.string :email
    	t.integer :phone
    	t.integer :cellphone
    	t.integer :fax
    	t.date :birthdate
    	t.integer :gender, :default => 1
    	t.integer :age

      t.timestamps null: false
    end
  end
end

class CreateHealths < ActiveRecord::Migration
  def change
    create_table :healths do |t|
    	t.boolean :health, :default => true

      t.timestamps null: false
    end
  end
end

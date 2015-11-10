class AddClientIdToCarsModel < ActiveRecord::Migration
  def change
  	add_column :cars, :client_id, :integer
  end
end

class AddClientIdToFireModel < ActiveRecord::Migration
  def change
  	add_column :fires, :client_id, :integer
  	add_column :lives, :client_id, :integer
  	add_column :healths, :client_id, :integer
  	add_column :contents, :client_id, :integer
  	add_column :sureties, :client_id, :integer
  end
end

class ChangeLivesColumn < ActiveRecord::Migration
  def change
  	change_column_default :lives, :marital_status, nil
  	change_column :lives, :marital_status, :string
  end
end

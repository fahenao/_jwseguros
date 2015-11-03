class ChangeCarsColumns < ActiveRecord::Migration
  def change
  		change_column_default :cars, :use, nil
  		change_column_default :cars, :coverage, nil
  		change_column :cars, :use, :string
  		change_column :cars, :coverage, :string
  end
end

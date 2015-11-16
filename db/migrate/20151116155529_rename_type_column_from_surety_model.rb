class RenameTypeColumnFromSuretyModel < ActiveRecord::Migration
  def change
  	rename_column :sureties, :type, :surety_type
  end
end

class ChangeDefaultClientModel < ActiveRecord::Migration
  def change
  		change_column_default :clients, :gender, nil
  end
end

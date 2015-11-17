class ChangeDataTypeContentModel < ActiveRecord::Migration
  def change
  	rename_column :contents, :value, :value_of_content
  end
end

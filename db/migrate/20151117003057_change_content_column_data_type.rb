class ChangeContentColumnDataType < ActiveRecord::Migration
  def change
  	change_column :contents, :value_of_content, 'integer USING CAST(value_of_content AS integer)'
  end
end

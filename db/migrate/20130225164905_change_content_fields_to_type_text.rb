class ChangeContentFieldsToTypeText < ActiveRecord::Migration
  def change
    change_column :media, :html, :text
    change_column :blogs, :content, :text
  end
end

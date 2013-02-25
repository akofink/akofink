class ChangeFieldNameFromHtmlToContent < ActiveRecord::Migration
  def change
    rename_column :media, :html, :content
  end
end

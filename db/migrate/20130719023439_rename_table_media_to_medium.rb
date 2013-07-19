class RenameTableMediaToMedium < ActiveRecord::Migration
  def change
    rename_table :media, :medium
  end
end

class RenameUserlevelToAccessLevel < ActiveRecord::Migration
  def change
    rename_column :users, :userlevel, :access_level
  end
end

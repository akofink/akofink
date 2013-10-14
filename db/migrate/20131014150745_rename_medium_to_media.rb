class RenameMediumToMedia < ActiveRecord::Migration
  def change
    rename_table :medium, :media
  end
end

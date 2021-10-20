class ChangeEnglishToBoolean < ActiveRecord::Migration[6.1]
  def change
    execute "ALTER TABLE movies ALTER COLUMN english DROP DEFAULT"
    change_column :movies, :english, "boolean USING english != 'true'"
    change_column_default :movies, :english, true
  end
end

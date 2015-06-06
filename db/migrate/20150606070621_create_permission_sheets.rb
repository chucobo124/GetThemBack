class CreatePermissionSheets < ActiveRecord::Migration
  def change
    create_table :permission_sheets do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

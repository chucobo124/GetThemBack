class CreateClassSheets < ActiveRecord::Migration
  def change
    create_table :class_sheets do |t|
      t.string :name
      t.string :classHours
      t.integer :venue

      t.timestamps null: false
    end
  end
end

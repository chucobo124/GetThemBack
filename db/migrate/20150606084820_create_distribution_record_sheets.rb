class CreateDistributionRecordSheets < ActiveRecord::Migration
  def change
    create_table :distribution_record_sheets do |t|
      t.integer :permissionId
      t.integer :groupId
      t.integer :manergerId
      t.text :description
      t.string :groupName

      t.timestamps null: false
    end
  end
end

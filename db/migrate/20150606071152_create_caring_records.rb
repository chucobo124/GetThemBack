class CreateCaringRecords < ActiveRecord::Migration
  def change
    create_table :caring_records do |t|
      t.string :studentId
      t.string :careMemberId
      t.datetime :careDate
      t.integer :careMethod
      t.text :description
      t.integer :reasonsForLeaving
      t.text :callback

      t.timestamps null: false
    end
  end
end

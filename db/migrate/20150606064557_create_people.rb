class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :classId
      t.string :name
      t.integer :sex
      t.datetime :birthday
      t.datetime :leavingDate
      t.string :officePhone
      t.string :homePhone
      t.string :graduateSchool
      t.string :company
      t.string :jobTitle
      t.string :skill
      t.string :email
      t.string :country
      t.integer :area
      t.string :address
      t.integer :permissionId
      t.integer :status

      t.timestamps null: false
    end
  end
end

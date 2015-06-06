class AddColumToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :studentId, :string
  end
end

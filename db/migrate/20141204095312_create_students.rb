class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
       t.string "Student_id" , :limit => 25
       t.string "first_name" , :limit => 25
       t.string "last_name" , :limit => 25
       t.string "email" , :limit => 25
       t.integer "phone" , :limit => 11
       t.string "address", :limit => 100

      t.timestamps
    end
  end
end

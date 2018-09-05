class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :fname
      t.string :lname
      t.integer :age
      t.integer :salary
      t.string :education
      t.string :email
      t.string :phone_number
      t.string :pic_url

    
      t.timestamps
    end
  end
end

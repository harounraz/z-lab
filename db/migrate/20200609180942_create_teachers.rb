class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :title
      t.string :username
      t.string :email
      t.string :passport_no
      t.string :country

      t.timestamps
    end
  end
end

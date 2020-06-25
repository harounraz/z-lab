class CreatePortals < ActiveRecord::Migration[6.0]
  def change
    create_table :portals do |t|
      t.string :name
      t.text :description
      t.string :semester
      t.string :slug
      t.references :teacher, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end

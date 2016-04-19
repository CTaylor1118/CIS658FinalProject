class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :version
      t.string :name
      t.string :image

      t.timestamps null: false
    end
  end
end

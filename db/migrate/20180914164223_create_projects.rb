class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.column :name, :string
      t.column :catagory, :string
      t.column :image, :string

      t.timestamps
    end
  end
end

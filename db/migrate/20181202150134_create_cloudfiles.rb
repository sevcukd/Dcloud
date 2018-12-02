class CreateCloudfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :cloudfiles do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.boolean :security

      t.timestamps
    end
  end
end

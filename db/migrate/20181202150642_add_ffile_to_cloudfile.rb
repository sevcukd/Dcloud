class AddFfileToCloudfile < ActiveRecord::Migration[5.1]
  def change
    add_column :cloudfiles, :ffile, :string
  end
end

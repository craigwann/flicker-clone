class EditUserImageCol < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :image_id
    add_column :users, :image_ids, :integer, array: true, default: []
  end
end

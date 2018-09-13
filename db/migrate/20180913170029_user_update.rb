class UserUpdate < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :image_id, :integer
    add_column :images, :user_id, :integer
    drop_table :images_users
  end
end

class AddImagesToUsers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :images do |t|
      t.attachment :img
    end
  end

  def self.down
    drop_attached_file :images, :img
  end
end

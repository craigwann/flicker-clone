class AddStuff < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.column :files, :string
      t.column :comments, :string, array: true, default: []
      t.column :tags, :integer, array: true, default: []
      t.column :favorites, :integer, array: true, default: []
    end
    create_join_table :images, :users
  end
end

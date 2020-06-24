class ChangeUserBackyardImageToArray < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :backyard_image
    add_column :users, :backyard_images, :text, :array => true, :default => []
  end
end

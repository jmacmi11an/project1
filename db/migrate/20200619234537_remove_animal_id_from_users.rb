class RemoveAnimalIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :animal_id, :integer
    remove_column :animals, :user_id, :integer
  end
end

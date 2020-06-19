class CreateAnimalsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :animals_users, :id => false do |t|
      t.integer :animal_id
      t.integer :user_id
    end
  end
end

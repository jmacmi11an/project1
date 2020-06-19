class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.text :name
      t.text :species
      t.text :breed
      t.text :size
      t.text :gender
      t.text :age
      t.text :image
      t.text :hair_length
      t.text :about
      t.float :adoption_cost
      t.integer :user_id
      t.integer :shelter_id

      t.timestamps
    end
  end
end

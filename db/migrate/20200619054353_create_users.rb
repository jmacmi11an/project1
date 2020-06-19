class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.string :password
      t.text :image
      t.boolean :has_backyard
      t.text :backyard_image
      t.text :about
      t.boolean :has_pets
      t.integer :pet_number
      t.text :pet_type
      t.integer :animal_id

      t.timestamps
    end
  end
end

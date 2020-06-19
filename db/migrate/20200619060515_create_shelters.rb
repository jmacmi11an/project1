class CreateShelters < ActiveRecord::Migration[5.2]
  def change
    create_table :shelters do |t|
      t.text :name
      t.text :address
      t.text :phone
      t.text :email
      t.text :adoption_policy
      t.integer :animal_id

      t.timestamps
    end
  end
end

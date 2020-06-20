# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_20_043505) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.text "name"
    t.text "species"
    t.text "breed"
    t.text "size"
    t.text "gender"
    t.text "age"
    t.text "image"
    t.text "hair_length"
    t.text "about"
    t.float "adoption_cost"
    t.integer "shelter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animals_users", id: false, force: :cascade do |t|
    t.integer "animal_id"
    t.integer "user_id"
  end

  create_table "shelters", force: :cascade do |t|
    t.text "name"
    t.text "address"
    t.text "phone"
    t.text "email"
    t.text "adoption_policy"
    t.integer "animal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "image"
    t.boolean "has_backyard"
    t.text "backyard_image"
    t.text "about"
    t.boolean "has_pets"
    t.integer "pet_number"
    t.text "pet_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end

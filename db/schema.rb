# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_23_224213) do

  create_table "actors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bio_cards", force: :cascade do |t|
    t.integer "age"
    t.integer "weight"
    t.string "height"
    t.string "eye_color"
    t.string "hair_color"
    t.integer "actor_id"
    t.index ["actor_id"], name: "index_bio_cards_on_actor_id"
  end

  create_table "contact_cards", force: :cascade do |t|
    t.string "email"
    t.string "phone"
    t.string "city"
    t.string "state"
    t.integer "actor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["actor_id"], name: "index_contact_cards_on_actor_id"
  end

  create_table "profile_pictures", force: :cascade do |t|
    t.string "url"
    t.integer "actor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["actor_id"], name: "index_profile_pictures_on_actor_id"
  end

  add_foreign_key "contact_cards", "actors"
  add_foreign_key "profile_pictures", "actors"
end

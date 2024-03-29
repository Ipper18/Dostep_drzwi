# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_01_23_072757) do
  create_table "access_logs", force: :cascade do |t|
    t.integer "user_id"
    t.string "action"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "room_id"
    t.integer "card_id", null: false
    t.index ["card_id"], name: "index_access_logs_on_card_id"
    t.index ["room_id"], name: "index_access_logs_on_room_id"
  end

  create_table "cards", force: :cascade do |t|
    t.integer "user_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "card_id"
    t.index ["card_id"], name: "index_cards_on_card_id", unique: true
    t.index ["user_id"], name: "index_cards_on_user_id"
  end

  create_table "logs", force: :cascade do |t|
    t.integer "card_id"
    t.integer "room_id"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_logs_on_card_id"
    t.index ["room_id"], name: "index_logs_on_room_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "room_id"
    t.date "valid_from"
    t.date "valid_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "card_id"
    t.index ["card_id"], name: "index_permissions_on_card_id"
    t.index ["room_id"], name: "index_permissions_on_room_id"
    t.index ["user_id"], name: "index_permissions_on_user_id"
  end

  create_table "permissions_rooms", id: false, force: :cascade do |t|
    t.integer "permission_id", null: false
    t.integer "room_id", null: false
    t.index ["permission_id"], name: "index_permissions_rooms_on_permission_id"
    t.index ["room_id"], name: "index_permissions_rooms_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "room_name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.string "password"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token"
  end

  add_foreign_key "access_logs", "cards"
  add_foreign_key "access_logs", "rooms"
  add_foreign_key "cards", "users"
  add_foreign_key "logs", "cards"
  add_foreign_key "logs", "rooms"
  add_foreign_key "permissions", "rooms"
  add_foreign_key "permissions", "users"
end

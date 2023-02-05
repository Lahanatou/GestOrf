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

ActiveRecord::Schema.define(version: 2023_02_04_134530) do

  create_table "hostparents", force: :cascade do |t|
    t.string "name", null: false
    t.string "adress", null: false
    t.integer "phone", null: false
    t.integer "orphan_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["orphan_id"], name: "index_hostparents_on_orphan_id"
    t.index ["user_id"], name: "index_hostparents_on_user_id"
  end

  create_table "originalparents", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.integer "phone", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orphans", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.integer "age"
    t.text "image"
    t.string "sex"
    t.integer "hostparent_id"
    t.integer "originalparent_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hostparent_id"], name: "index_orphans_on_hostparent_id"
    t.index ["originalparent_id"], name: "index_orphans_on_originalparent_id"
    t.index ["user_id"], name: "index_orphans_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "hostparents", "orphans"
  add_foreign_key "hostparents", "users"
  add_foreign_key "orphans", "hostparents"
  add_foreign_key "orphans", "originalparents"
  add_foreign_key "orphans", "users"
end
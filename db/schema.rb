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

ActiveRecord::Schema.define(version: 2023_02_21_173844) do

  create_table "alitz_tag2_relations", force: :cascade do |t|
    t.integer "alitz_id", null: false
    t.integer "tag2_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["alitz_id"], name: "index_alitz_tag2_relations_on_alitz_id"
    t.index ["tag2_id"], name: "index_alitz_tag2_relations_on_tag2_id"
  end

  create_table "alitz_tag_relations", force: :cascade do |t|
    t.integer "alitz_id", null: false
    t.integer "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["alitz_id"], name: "index_alitz_tag_relations_on_alitz_id"
    t.index ["tag_id"], name: "index_alitz_tag_relations_on_tag_id"
  end

# Could not dump table "alitzs" because of following StandardError
#   Unknown type 'stringg' for column 'category'

  create_table "tag2s", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.text "profile"
    t.string "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "alitz_tag2_relations", "alitzs"
  add_foreign_key "alitz_tag2_relations", "tag2s"
  add_foreign_key "alitz_tag_relations", "alitzs"
  add_foreign_key "alitz_tag_relations", "tags"
end

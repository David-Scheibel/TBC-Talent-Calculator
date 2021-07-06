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

ActiveRecord::Schema.define(version: 2021_07_02_195643) do

  create_table "builds", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_builds_on_user_id"
  end

  create_table "player_classes", force: :cascade do |t|
    t.integer "player_class_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ranks", force: :cascade do |t|
    t.integer "talent_id", null: false
    t.integer "rank_id"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["talent_id"], name: "index_ranks_on_talent_id"
  end

  create_table "specs", force: :cascade do |t|
    t.integer "player_class_id", null: false
    t.integer "spec_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_class_id"], name: "index_specs_on_player_class_id"
  end

  create_table "talents", force: :cascade do |t|
    t.integer "spec_id", null: false
    t.integer "talent_id"
    t.string "icon"
    t.string "name"
    t.integer "points"
    t.string "dependency"
    t.integer "tier"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["spec_id"], name: "index_talents_on_spec_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "builds", "users"
  add_foreign_key "ranks", "talents"
  add_foreign_key "specs", "player_classes"
  add_foreign_key "talents", "specs"
end

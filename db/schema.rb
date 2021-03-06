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

ActiveRecord::Schema.define(version: 2019_02_19_024515) do

  create_table "force_powers", force: :cascade do |t|
    t.string "name"
  end

  create_table "padawan_force_powers", force: :cascade do |t|
    t.integer "padawan_id"
    t.integer "force_power_id"
    t.integer "skill_level"
  end

  create_table "padawans", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "homeplanet"
    t.string "species"
    t.integer "ovr_force_strength"
  end

  create_table "trainings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "padawan_id"
  end

  create_table "user_force_powers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "force_power_id"
    t.integer "skill_level"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.boolean "master"
    t.integer "trained_padawans"
    t.string "lightsaber_color"
    t.integer "age"
    t.string "homeplanet"
    t.string "species"
    t.integer "ovr_force_strength"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uid"
    t.string "provider"
  end

end

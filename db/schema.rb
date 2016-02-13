# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160213000525) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "",   null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "first_Name"
    t.string   "last_Name"
    t.boolean  "admin?",                 default: true
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "players", force: true do |t|
    t.datetime "created_at",       null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "gender"
    t.date     "DOB"
    t.string   "education_level"
    t.string   "race"
    t.string   "household_size"
    t.string   "household_income"
    t.datetime "updated_at",       null: false
    t.integer  "research_id"
  end

  create_table "players_researches", id: false, force: true do |t|
    t.integer "player_id"
    t.integer "research_session_id"
  end

  create_table "researches", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "PIN"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "researches", ["PIN"], name: "index_researches_on_PIN", unique: true, using: :btree

  create_table "risk_balloon_games", force: true do |t|
    t.integer  "inflation_rate"
    t.integer  "max_inflation"
    t.integer  "cash_multiplier"
    t.string   "balloon_color"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "research_id"
  end

end

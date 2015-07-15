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

ActiveRecord::Schema.define(version: 20150715024914) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointment_blocks", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone_session_type_id"
    t.boolean  "active"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "code"
  end

  create_table "appointments", force: :cascade do |t|
    t.integer  "appointment_block_id"
    t.integer  "participant_id"
    t.datetime "datetime"
    t.string   "phone"
    t.string   "email"
    t.string   "reminder"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "coaching_sessions", force: :cascade do |t|
    t.string   "user_id"
    t.integer  "workshop_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "coaching_sessions", ["user_id", "workshop_id"], name: "index_coaching_sessions_on_user_id_and_workshop_id", unique: true, using: :btree

  create_table "participants", force: :cascade do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participants_workshops", id: false, force: :cascade do |t|
    t.integer "participant_id"
    t.integer "workshop_id"
  end

  add_index "participants_workshops", ["participant_id"], name: "index_participants_workshops_on_participant_id", using: :btree
  add_index "participants_workshops", ["workshop_id"], name: "index_participants_workshops_on_workshop_id", using: :btree

  create_table "phone_session_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phone_sessions", force: :cascade do |t|
    t.integer  "phone_session_type_id"
    t.string   "phone"
    t.string   "reminder"
    t.string   "email"
    t.integer  "user_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "participant_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "company"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "name"
    t.boolean  "coach"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users_workshops", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "workshop_id"
  end

  add_index "users_workshops", ["user_id"], name: "index_users_workshops_on_user_id", using: :btree
  add_index "users_workshops", ["workshop_id"], name: "index_users_workshops_on_workshop_id", using: :btree

  create_table "workshop_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workshops", force: :cascade do |t|
    t.datetime "datetime"
    t.string   "location"
    t.integer  "workshop_type_id"
    t.integer  "project_id"
    t.integer  "appointment_block_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end

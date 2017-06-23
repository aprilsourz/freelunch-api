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

ActiveRecord::Schema.define(version: 20170623193003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.boolean  "show_to_engineer",  default: true
    t.boolean  "show_to_recruiter", default: true
    t.integer  "engineer_id",                      null: false
    t.integer  "recruiter_id",                     null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["engineer_id"], name: "index_conversations_on_engineer_id", using: :btree
    t.index ["recruiter_id"], name: "index_conversations_on_recruiter_id", using: :btree
  end

  create_table "engineers", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "website",    null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_engineers_on_user_id", using: :btree
  end

  create_table "recruiters", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "website",    null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_recruiters_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                       null: false
    t.string   "token",                       null: false
    t.string   "password_digest",             null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "account_type",    default: 0
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
  end

  add_foreign_key "conversations", "engineers"
  add_foreign_key "conversations", "recruiters"
  add_foreign_key "engineers", "users"
  add_foreign_key "recruiters", "users"
end

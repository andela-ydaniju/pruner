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

ActiveRecord::Schema.define(version: 20160111005342) do

  create_table "links", force: :cascade do |t|
    t.string   "url_input"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "shortened_link"
    t.integer  "user_id"
    t.integer  "visits"
    t.boolean  "enabled"
    t.boolean  "erased"
  end

  add_index "links", ["user_id", "created_at"], name: "index_links_on_user_id_and_created_at"
  add_index "links", ["user_id"], name: "index_links_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end

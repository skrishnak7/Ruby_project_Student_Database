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

ActiveRecord::Schema.define(version: 20141204114942) do

  create_table "admin_logins", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "Student_id", limit: 25
    t.string   "first_name", limit: 25
    t.string   "last_name",  limit: 25
    t.string   "email",      limit: 25
    t.integer  "phone",      limit: 11
    t.string   "address",    limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

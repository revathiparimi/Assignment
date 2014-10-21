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

ActiveRecord::Schema.define(version: 20141020074049) do

  create_table "personalinfos", force: true do |t|
    t.integer  "signup_id"
    t.string   "fbid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "signups", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "password"
    t.string   "emailid"
    t.text     "phonenumber"
    t.string   "gender"
    t.string   "qualification"
    t.string   "language"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "married"
  end

end
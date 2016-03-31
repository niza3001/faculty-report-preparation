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

ActiveRecord::Schema.define(version: 20160331222137) do

  create_table "evaluations", force: true do |t|
    t.string   "term"
    t.string   "subject"
    t.string   "course"
    t.string   "section"
    t.integer  "enrollment"
    t.decimal  "item1_mean"
    t.decimal  "item2_mean"
    t.decimal  "item3_mean"
    t.decimal  "item4_mean"
    t.decimal  "item5_mean"
    t.decimal  "item6_mean"
    t.decimal  "item7_mean"
    t.decimal  "item8_mean"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "instructor_id"
    t.boolean  "is_test_data"
  end

  add_index "evaluations", ["instructor_id"], name: "index_evaluations_on_instructor_id"

  create_table "instructors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

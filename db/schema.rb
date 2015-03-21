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

ActiveRecord::Schema.define(version: 20150320224132) do

  create_table "assignments", force: :cascade do |t|
    t.integer  "driver_id"
    t.integer  "coach_id"
    t.string   "route"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "assignments", ["coach_id"], name: "index_assignments_on_coach_id"
  add_index "assignments", ["driver_id"], name: "index_assignments_on_driver_id"

  create_table "coaches", force: :cascade do |t|
    t.string   "klass"
    t.string   "model"
    t.string   "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "preference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

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

ActiveRecord::Schema.define(version: 20150606071152) do

  create_table "caring_records", force: :cascade do |t|
    t.string   "studentId"
    t.string   "careMemberId"
    t.datetime "careDate"
    t.integer  "careMethod"
    t.text     "description"
    t.integer  "reasonsForLeaving"
    t.text     "callback"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "class_sheets", force: :cascade do |t|
    t.string   "name"
    t.string   "classHours"
    t.integer  "venue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.integer  "classId"
    t.string   "name"
    t.integer  "sex"
    t.datetime "birthday"
    t.datetime "leavingDate"
    t.string   "officePhone"
    t.string   "homePhone"
    t.string   "graduateSchool"
    t.string   "company"
    t.string   "jobTitle"
    t.string   "skill"
    t.string   "email"
    t.string   "country"
    t.integer  "area"
    t.string   "address"
    t.integer  "permissionId"
    t.integer  "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "studentId"
  end

  create_table "permission_sheets", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

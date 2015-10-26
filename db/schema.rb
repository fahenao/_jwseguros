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

ActiveRecord::Schema.define(version: 20151026201050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bails", force: :cascade do |t|
    t.string   "type"
    t.integer  "value"
    t.string   "percentage"
    t.text     "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string   "brand"
    t.integer  "price"
    t.string   "model"
    t.date     "year"
    t.integer  "use",        default: 1
    t.integer  "coverage",   default: 1
    t.text     "comments"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "fullname"
    t.string   "email"
    t.integer  "phone"
    t.integer  "cellphone"
    t.integer  "fax"
    t.date     "birthdate"
    t.integer  "gender",     default: 1
    t.integer  "age"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "contents", force: :cascade do |t|
    t.string   "value"
    t.string   "address"
    t.text     "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fires", force: :cascade do |t|
    t.string   "address"
    t.integer  "value_of_goods"
    t.text     "comments"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "healths", force: :cascade do |t|
    t.boolean  "health",     default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.text     "comments"
  end

  create_table "lives", force: :cascade do |t|
    t.integer  "sum_assured"
    t.integer  "marital_status", default: 1
    t.text     "comments"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end

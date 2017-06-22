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

ActiveRecord::Schema.define(version: 20170622174707) do

  create_table "assemblies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assemblies_parts", id: false, force: true do |t|
    t.integer "assembly_id"
    t.integer "part_id"
  end

  create_table "assembly_translations", force: true do |t|
    t.integer  "assembly_id", null: false
    t.string   "locale",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "assembly_translations", ["assembly_id"], name: "index_assembly_translations_on_assembly_id"
  add_index "assembly_translations", ["locale"], name: "index_assembly_translations_on_locale"

  create_table "parts", force: true do |t|
    t.string   "part_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

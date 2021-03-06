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

ActiveRecord::Schema.define(version: 2019_05_10_131924) do

  create_table "parks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "parkname"
    t.string "shortname"
    t.string "country"
    t.string "ken"
    t.string "city"
    t.string "area"
    t.string "url"
    t.boolean "koumoku1"
    t.boolean "koumoku2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "texts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "text", null: false
    t.integer "user_id"
    t.integer "park_id"
    t.date "visitday"
    t.string "animal", null: false
    t.string "nickname"
    t.string "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

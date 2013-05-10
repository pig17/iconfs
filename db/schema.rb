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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130509215029) do

  create_table "documents", :force => true do |t|
    t.string   "title"
    t.string   "link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.time     "time"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notes", :force => true do |t|
    t.string   "title"
    t.boolean  "shared"
    t.text     "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pis", :force => true do |t|
    t.integer  "coordX"
    t.integer  "coordY"
    t.string   "type"
    t.string   "name"
    t.string   "address"
    t.integer  "contact"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "rooms", :force => true do |t|
    t.string   "local"
    t.integer  "coordX"
    t.integer  "coordY"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "title"
    t.time     "time"
    t.string   "track"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "sex"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "instituition"
    t.integer  "contact"
    t.boolean  "available"
    t.string   "homepage"
    t.text     "aboutme"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
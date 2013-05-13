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

ActiveRecord::Schema.define(:version => 20130513113153) do

  create_table "buildings", :force => true do |t|
    t.string   "name"
    t.string   "plan"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "days", :force => true do |t|
    t.date     "date"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "documents", :force => true do |t|
    t.string   "title"
    t.string   "link"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.datetime "time"
    t.text     "description"
    t.integer  "schedule_id"
    t.integer  "track_id"
    t.integer  "room_id"
    t.integer  "day_id"
    t.integer  "user_id"
    t.integer  "document_id"
    t.boolean  "session"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "durationMin"
  end

  create_table "favourites", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "floors", :force => true do |t|
    t.string   "name"
    t.integer  "building_id"
    t.string   "plan"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "meetings", :force => true do |t|
    t.datetime "time"
    t.string   "local"
    t.text     "message"
    t.integer  "user_id"
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
    t.string   "typePI"
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
    t.integer  "event_id"
    t.integer  "floor_id"
    t.integer  "capacity"
    t.string   "plan"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "schedules", :force => true do |t|
    t.integer  "day_id"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tracks", :force => true do |t|
    t.string   "name"
    t.integer  "colour"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "sex"
    t.binary   "image"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "institution"
    t.integer  "contact"
    t.boolean  "available"
    t.string   "homepage"
    t.text     "aboutme"
    t.integer  "note_id"
    t.integer  "document_id"
    t.integer  "meeting_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end

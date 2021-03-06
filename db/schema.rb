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

ActiveRecord::Schema.define(version: 20150126222333) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artist_artwork_assignments", force: true do |t|
    t.integer  "artist_id"
    t.integer  "artwork_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artists", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "birthday"
    t.string   "hometown"
    t.string   "gender"
    t.string   "nationality"
    t.string   "genes"
    t.string   "artsy_artist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artworks", force: true do |t|
    t.string   "title"
    t.string   "date"
    t.string   "image"
    t.string   "category"
    t.string   "medium"
    t.string   "collecting_institution"
    t.string   "artsy_artwork_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_artist_ratings", force: true do |t|
    t.integer  "rating"
    t.integer  "user_id"
    t.integer  "artist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_artwork_ratings", force: true do |t|
    t.integer  "rating"
    t.integer  "user_id"
    t.integer  "artwork_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "uid"
    t.string   "provider"
    t.string   "profile_image_url"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

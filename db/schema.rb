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

ActiveRecord::Schema.define(version: 20140618193942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "cities", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.uuid     "created_by"
    t.uuid     "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.uuid     "created_by"
    t.uuid     "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.string   "short_name"
    t.string   "url"
    t.string   "status"
    t.boolean  "active"
    t.string   "layout"
    t.uuid     "created_by"
    t.uuid     "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "name"
    t.uuid     "created_by"
    t.uuid     "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_types", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string "name"
    t.uuid   "created_by"
    t.uuid   "updated_by"
  end

  create_table "users", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "full_name"
    t.string   "user_name"
    t.string   "title"
    t.string   "email_id"
    t.string   "phone_no"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "address_3"
    t.uuid     "city_id"
    t.uuid     "region_id"
    t.uuid     "country_id"
    t.string   "password"
    t.uuid     "user_type_id"
    t.string   "active"
    t.uuid     "status_id"
    t.string   "remember_me_key"
    t.string   "reset_password_code"
    t.string   "session_token"
    t.uuid     "o_uid"
    t.uuid     "site_id"
    t.uuid     "note_id"
    t.uuid     "created_by"
    t.uuid     "updated_by"
    t.date     "birth"
    t.uuid     "social_hub_id"
    t.uuid     "language_id"
    t.uuid     "relationship_id"
    t.uuid     "gender_id"
    t.uuid     "image_id"
    t.string   "website"
    t.uuid     "education_detail_id"
    t.uuid     "work_detail_id"
    t.uuid     "skill_detail_id"
    t.string   "company"
    t.string   "location"
    t.text     "description"
    t.text     "about_me"
    t.string   "introduction"
    t.uuid     "video_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["full_name", "email_id", "city_id", "country_id", "user_type_id", "user_name"], name: "index_users", using: :btree

end

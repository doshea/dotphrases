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

ActiveRecord::Schema.define(version: 20180125075213) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "domains", force: :cascade do |t|
    t.string "suffix", null: false
    t.boolean "verified", default: false
    t.bigint "institution_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["institution_id"], name: "index_domains_on_institution_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.text "image"
    t.boolean "verified", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phrases", force: :cascade do |t|
    t.string "label"
    t.string "abbrev"
    t.text "text"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_phrases_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username", null: false
    t.string "email", null: false
    t.text "image"
    t.boolean "is_admin"
    t.string "password_digest"
    t.string "auth_token"
    t.string "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.boolean "verified"
    t.string "verification_token"
    t.bigint "institution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["institution_id"], name: "index_users_on_institution_id"
  end

end

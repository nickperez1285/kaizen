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

ActiveRecord::Schema.define(version: 20160831000016) do

  create_table "contacts", force: :cascade do |t|
    t.integer  "posting_id",        limit: 4
    t.string   "name",              limit: 255, default: ""
    t.string   "email",             limit: 255, default: ""
    t.string   "phone",             limit: 255, default: ""
    t.string   "linkedinOrWebsite", limit: 255, default: ""
    t.string   "notes",             limit: 255, default: ""
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "contacts", ["posting_id"], name: "index_contacts_on_posting_id", using: :btree

  create_table "creates", force: :cascade do |t|
    t.integer  "posting_id", limit: 4
    t.string   "info",       limit: 255, default: ""
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "creates", ["posting_id"], name: "index_creates_on_posting_id", using: :btree

  create_table "educates", force: :cascade do |t|
    t.integer  "posting_id", limit: 4
    t.string   "info",       limit: 255, default: ""
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "educates", ["posting_id"], name: "index_educates_on_posting_id", using: :btree

  create_table "evolves", force: :cascade do |t|
    t.integer  "posting_id", limit: 4
    t.string   "info",       limit: 255, default: ""
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "evolves", ["posting_id"], name: "index_evolves_on_posting_id", using: :btree

  create_table "hones", force: :cascade do |t|
    t.integer  "posting_id", limit: 4
    t.string   "info",       limit: 255, default: ""
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "hones", ["posting_id"], name: "index_hones_on_posting_id", using: :btree

  create_table "index_sections", force: :cascade do |t|
    t.integer  "posting_id", limit: 4
    t.string   "info",       limit: 255, default: ""
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "index_sections", ["posting_id"], name: "index_index_sections_on_posting_id", using: :btree

  create_table "layout_sections", force: :cascade do |t|
    t.integer  "posting_id", limit: 4
    t.string   "primary",    limit: 255, default: ""
    t.string   "secondary",  limit: 255, default: ""
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "layout_sections", ["posting_id"], name: "index_layout_sections_on_posting_id", using: :btree

  create_table "models", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "User",                   limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "models", ["email"], name: "index_models_on_email", unique: true, using: :btree
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true, using: :btree

  create_table "notes", force: :cascade do |t|
    t.integer  "posting_id", limit: 4
    t.string   "info",       limit: 255, default: ""
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "notes", ["posting_id"], name: "index_notes_on_posting_id", using: :btree

  create_table "outlines", force: :cascade do |t|
    t.integer  "posting_id", limit: 4
    t.string   "tagline",    limit: 255, default: ""
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "outlines", ["posting_id"], name: "index_outlines_on_posting_id", using: :btree

  create_table "overviews", force: :cascade do |t|
    t.integer  "posting_id", limit: 4
    t.string   "info",       limit: 255, default: ""
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "overviews", ["posting_id"], name: "index_overviews_on_posting_id", using: :btree

  create_table "postings", force: :cascade do |t|
    t.integer  "user_id",           limit: 4
    t.string   "begin",             limit: 255
    t.string   "test",              limit: 255
    t.string   "educate",           limit: 255
    t.string   "create",            limit: 255
    t.string   "hone",              limit: 255
    t.string   "index",             limit: 255
    t.string   "notes",             limit: 255
    t.string   "contacts",          limit: 255
    t.string   "contacts_name",     limit: 255
    t.string   "contacts_email",    limit: 255
    t.string   "contacts_linkedin", limit: 255
    t.string   "contacts_notes",    limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "postings", ["user_id"], name: "index_postings_on_user_id", using: :btree

  create_table "revs", force: :cascade do |t|
    t.integer  "posting_id", limit: 4
    t.string   "info",       limit: 255, default: ""
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "revs", ["posting_id"], name: "index_revs_on_posting_id", using: :btree

  create_table "tests", force: :cascade do |t|
    t.integer  "posting_id", limit: 4
    t.string   "info",       limit: 255, default: ""
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "tests", ["posting_id"], name: "index_tests_on_posting_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name",      limit: 255
    t.string   "alias",           limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

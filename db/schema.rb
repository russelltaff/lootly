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

ActiveRecord::Schema.define(version: 20131216003359) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "look_items", force: true do |t|
    t.integer  "product_id", null: false
    t.integer  "look_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "look_items", ["look_id", "product_id"], name: "index_look_items_on_look_id_and_product_id", unique: true, using: :btree
  add_index "look_items", ["look_id"], name: "index_look_items_on_look_id", using: :btree
  add_index "look_items", ["product_id"], name: "index_look_items_on_product_id", using: :btree

  create_table "looks", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.integer  "look_id"
    t.integer  "product_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "{:null=>false}_file_name"
    t.string   "{:null=>false}_content_type"
    t.integer  "{:null=>false}_file_size"
    t.datetime "{:null=>false}_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["look_id"], name: "index_photos_on_look_id", using: :btree
  add_index "photos", ["product_id"], name: "index_photos_on_product_id", using: :btree

  create_table "products", force: true do |t|
    t.boolean  "male"
    t.string   "product_type",       null: false
    t.string   "name",       null: false
    t.decimal  "price",      null: false
    t.string   "size",       null: false
    t.integer  "quantity",   null: false
    t.string   "color",      null: false
    t.string   "material",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["color"], name: "index_products_on_color", using: :btree
  add_index "products", ["material"], name: "index_products_on_material", using: :btree
  add_index "products", ["name"], name: "index_products_on_name", using: :btree
  add_index "products", ["price"], name: "index_products_on_price", using: :btree
  add_index "products", ["quantity"], name: "index_products_on_quantity", using: :btree
  add_index "products", ["size"], name: "index_products_on_size", using: :btree
  add_index "products", ["type"], name: "index_products_on_type", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.string   "f_name"
    t.string   "l_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["session_token"], name: "index_users_on_session_token", using: :btree

end

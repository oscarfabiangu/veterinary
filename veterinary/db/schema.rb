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

ActiveRecord::Schema.define(version: 20150724044833) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "date"
    t.string   "description", limit: 255
    t.string   "state",       limit: 255
    t.integer  "customer_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "appointments", ["customer_id"], name: "index_appointments_on_customer_id", using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.string   "dni",        limit: 255
    t.string   "city",       limit: 255
    t.string   "phone",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "detail_orders", force: :cascade do |t|
    t.integer  "quantity",   limit: 4
    t.integer  "product_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "detail_orders", ["product_id"], name: "index_detail_orders_on_product_id", using: :btree

  create_table "pets", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "race",        limit: 255
    t.string   "age",         limit: 255
    t.string   "weight",      limit: 255
    t.string   "sex",         limit: 255
    t.integer  "customer_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "pets", ["customer_id"], name: "index_pets_on_customer_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "type",        limit: 255
    t.integer  "cost",        limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "service_orders", force: :cascade do |t|
    t.datetime "date"
    t.string   "observation",     limit: 255
    t.integer  "price",           limit: 4
    t.integer  "detail_order_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "service_orders", ["detail_order_id"], name: "index_service_orders_on_detail_order_id", using: :btree

  add_foreign_key "appointments", "customers"
  add_foreign_key "detail_orders", "products"
  add_foreign_key "pets", "customers"
  add_foreign_key "service_orders", "detail_orders"
end

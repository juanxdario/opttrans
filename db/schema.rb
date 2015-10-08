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

ActiveRecord::Schema.define(version: 20151008003423) do

  create_table "cities", force: :cascade do |t|
    t.string   "mun"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "state_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "email"
    t.integer  "phone"
    t.string   "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cus_addresses", force: :cascade do |t|
    t.string   "address"
    t.string   "city"
    t.integer  "phone"
    t.boolean  "favorite"
    t.boolean  "collect_address"
    t.integer  "customer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "cus_addresses", ["customer_id"], name: "index_cus_addresses_on_customer_id"

  create_table "customers", force: :cascade do |t|
    t.integer  "count_services"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "customers", ["user_id"], name: "index_customers_on_user_id"

  create_table "del_addresses", force: :cascade do |t|
    t.string   "contact"
    t.string   "address"
    t.string   "city"
    t.integer  "phone"
    t.integer  "transporter_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "del_addresses", ["transporter_id"], name: "index_del_addresses_on_transporter_id"

  create_table "rem_statuses", force: :cascade do |t|
    t.integer  "remittance_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "name"
  end

  add_index "rem_statuses", ["remittance_id"], name: "index_rem_statuses_on_remittance_id"

  create_table "remittances", force: :cascade do |t|
    t.integer  "weight"
    t.integer  "large"
    t.integer  "width"
    t.integer  "height"
    t.boolean  "delicate"
    t.boolean  "urgent"
    t.string   "max_date"
    t.integer  "customer_id"
    t.integer  "rem_status_id"
    t.integer  "service_id"
    t.integer  "del_address_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "remittances", ["customer_id"], name: "index_remittances_on_customer_id"
  add_index "remittances", ["del_address_id"], name: "index_remittances_on_del_address_id"
  add_index "remittances", ["rem_status_id"], name: "index_remittances_on_rem_status_id"
  add_index "remittances", ["service_id"], name: "index_remittances_on_service_id"

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.float    "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "dpto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transporters", force: :cascade do |t|
    t.integer  "count_remittances"
    t.integer  "company_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "transporters", ["company_id"], name: "index_transporters_on_company_id"

  create_table "user_statuses", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_statuses", ["user_id"], name: "index_user_statuses_on_user_id"

  create_table "user_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.integer  "phone",                  limit: 8
    t.integer  "transporter_id"
    t.integer  "user_status_id"
    t.integer  "user_type_id"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["transporter_id"], name: "index_users_on_transporter_id"
  add_index "users", ["user_status_id"], name: "index_users_on_user_status_id"
  add_index "users", ["user_type_id"], name: "index_users_on_user_type_id"

  create_table "vehicles", force: :cascade do |t|
    t.string   "type"
    t.string   "plate"
    t.boolean  "available"
    t.string   "photo"
    t.integer  "transporter_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "vehicles", ["transporter_id"], name: "index_vehicles_on_transporter_id"

end

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


ActiveRecord::Schema.define(version: 20131120081448) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: true do |t|
    t.string "Name"
    t.string "Street__c"
    t.string "City__c"
    t.string "State__c"
    t.string "Zipcode__c"
    t.string "PhoneNumber__c"
    t.string "Email__c"
    t.text   "Preferences__c"
    t.string "Id"
  end

  create_table "drivers", force: true do |t|
    t.string   "Email__c"
    t.string   "type"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.float    "Weight__c"
    t.float    "Cost__c"
    t.integer  "Number_of_Items__c"
    t.string   "Type__c"
    t.datetime "Ready_For_Pickup__c"
    t.datetime "en_route__c"
    t.datetime "arrived__c"
    t.datetime "complete__c"
    t.datetime "delivered__c"
    t.string   "Customer_SF_ID__c"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree

end

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

ActiveRecord::Schema.define(version: 2019_05_23_173726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accountlines", force: :cascade do |t|
    t.bigint "transtype_id"
    t.datetime "date"
    t.string "trans_desc"
    t.decimal "amount"
    t.decimal "balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "entity_id"
    t.index ["entity_id"], name: "index_accountlines_on_entity_id"
    t.index ["transtype_id"], name: "index_accountlines_on_transtype_id"
  end

  create_table "entities", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "entitytype_id"
    t.string "account_desc"
    t.string "sortcode"
    t.string "accountnumber"
    t.datetime "duedate"
    t.string "recurring"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entitytype_id"], name: "index_entities_on_entitytype_id"
    t.index ["user_id"], name: "index_entities_on_user_id"
  end

  create_table "entitytypes", force: :cascade do |t|
    t.string "entity_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transtypes", force: :cascade do |t|
    t.string "ttype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.integer "password_digest"
  end

  add_foreign_key "accountlines", "entities"
  add_foreign_key "accountlines", "transtypes"
  add_foreign_key "entities", "entitytypes"
  add_foreign_key "entities", "users"
end

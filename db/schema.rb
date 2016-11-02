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

ActiveRecord::Schema.define(version: 20161102011041) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collections", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "product_set"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "order_lines", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "unit_id"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "payment_id"
    t.datetime "ordered_at"
    t.datetime "required_at"
    t.datetime "shipped_at"
    t.datetime "paid_at"
    t.decimal  "discount",    precision: 12, scale: 2
    t.integer  "status_id"
    t.string   "shipper_id"
    t.decimal  "subtotal",    precision: 12, scale: 2
    t.decimal  "tax",         precision: 12, scale: 2
    t.decimal  "shipping",    precision: 12, scale: 2
    t.decimal  "total",       precision: 12, scale: 2
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["status_id"], name: "index_orders_on_status_id", using: :btree
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "payments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price",       precision: 12, scale: 2
    t.string   "size_set"
    t.string   "color_set"
    t.string   "img_set"
    t.integer  "brand_id"
    t.integer  "category_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["brand_id"], name: "index_products_on_brand_id", using: :btree
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.string   "bootstrap_class"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "units", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "color"
    t.string   "size"
    t.integer  "quantity"
    t.boolean  "available"
    t.decimal  "price",      precision: 12, scale: 2
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["product_id"], name: "index_units_on_product_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end

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

ActiveRecord::Schema.define(version: 2019_11_13_064215) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customer_profiles", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.bigint "restaurant_id"
    t.index ["restaurant_id"], name: "index_menu_items_on_restaurant_id"
  end

  create_table "menu_items_orders", force: :cascade do |t|
    t.bigint "menu_id"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_menu_items_orders_on_menu_id"
    t.index ["order_id"], name: "index_menu_items_orders_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "post_id"
    t.bigint "customer_id"
    t.integer "total_payable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["post_id"], name: "index_orders_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.bigint "restaurant_id"
    t.bigint "customer_id"
    t.text "message"
    t.string "pickup_location"
    t.boolean "order_sent"
    t.boolean "received"
    t.string "time_limit"
    t.integer "slots_available"
    t.integer "slots_left"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_posts_on_customer_id"
    t.index ["restaurant_id"], name: "index_posts_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "image_url"
    t.decimal "minimum_spending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

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

ActiveRecord::Schema.define(version: 2020_06_05_132702) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attractions", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "types"
    t.bigint "locality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["locality_id"], name: "index_attractions_on_locality_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "iso_3166_1_alpha2"
    t.string "iso_3166_1_alpha3"
    t.string "iso_3166_1_numeric"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "localities", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_localities_on_country_id"
  end

  create_table "theme_attractions", force: :cascade do |t|
    t.bigint "theme_id"
    t.bigint "attraction_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attraction_id"], name: "index_theme_attractions_on_attraction_id"
    t.index ["theme_id"], name: "index_theme_attractions_on_theme_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_themes_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
  end

  add_foreign_key "attractions", "localities"
  add_foreign_key "localities", "countries"
  add_foreign_key "theme_attractions", "attractions"
  add_foreign_key "theme_attractions", "themes"
  add_foreign_key "themes", "categories"
end

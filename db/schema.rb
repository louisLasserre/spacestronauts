# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_03_31_120913) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destinations", force: :cascade do |t|
    t.string "planet"
    t.string "image"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destinations_rockets", id: false, force: :cascade do |t|
    t.bigint "destination_id", null: false
    t.bigint "rocket_id", null: false
    t.index ["destination_id", "rocket_id"], name: "index_destinations_rockets_on_destination_id_and_rocket_id"
    t.index ["rocket_id", "destination_id"], name: "index_destinations_rockets_on_rocket_id_and_destination_id"
  end

  create_table "rockets", force: :cascade do |t|
    t.string "name"
    t.bigint "company_id", null: false
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_rockets_on_company_id"
  end

  create_table "travels", force: :cascade do |t|
    t.integer "destination_id"
    t.integer "rockets_id"
    t.date "date"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "rockets", "companies"
end

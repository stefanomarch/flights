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

ActiveRecord::Schema.define(version: 2021_04_05_130204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airplanes", force: :cascade do |t|
    t.string "model"
    t.integer "total_seats"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "airports", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "flight_execution_id", null: false
    t.integer "seats", default: 0
    t.boolean "status", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flight_execution_id"], name: "index_bookings_on_flight_execution_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "flight_executions", force: :cascade do |t|
    t.integer "number"
    t.datetime "departure_datetime"
    t.integer "available_seats"
    t.bigint "airplane_id", null: false
    t.bigint "flight_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["airplane_id"], name: "index_flight_executions_on_airplane_id"
    t.index ["flight_id"], name: "index_flight_executions_on_flight_id"
  end

  create_table "flights", force: :cascade do |t|
    t.bigint "airport_destination_id"
    t.bigint "airport_origin_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["airport_destination_id"], name: "index_flights_on_airport_destination_id"
    t.index ["airport_origin_id"], name: "index_flights_on_airport_origin_id"
  end

  create_table "passengers", force: :cascade do |t|
    t.bigint "booking_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_passengers_on_booking_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "authentication_token", limit: 30
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "flight_executions"
  add_foreign_key "bookings", "users"
  add_foreign_key "flight_executions", "airplanes"
  add_foreign_key "flight_executions", "flights"
  add_foreign_key "flights", "airports", column: "airport_destination_id"
  add_foreign_key "flights", "airports", column: "airport_origin_id"
  add_foreign_key "passengers", "bookings"
end

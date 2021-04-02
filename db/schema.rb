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

ActiveRecord::Schema.define(version: 2021_04_02_165859) do

  create_table "airplanes", force: :cascade do |t|
    t.string "company"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "airports", force: :cascade do |t|
    t.string "city"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "flight_executions", force: :cascade do |t|
    t.integer "flight_id_id", null: false
    t.integer "user_id_id", null: false
    t.datetime "date_of_execution"
    t.integer "passenger_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flight_id_id"], name: "index_flight_executions_on_flight_id_id"
    t.index ["passenger_id_id"], name: "index_flight_executions_on_passenger_id_id"
    t.index ["user_id_id"], name: "index_flight_executions_on_user_id_id"
  end

  create_table "flights", force: :cascade do |t|
    t.integer "number"
    t.integer "airplane_id", null: false
    t.integer "origin_airport_id_id", null: false
    t.integer "destination_airport_id_id", null: false
    t.string "duration"
    t.datetime "departure_datetime"
    t.integer "capacity"
    t.integer "avilables_seats"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["airplane_id"], name: "index_flights_on_airplane_id"
    t.index ["destination_airport_id_id"], name: "index_flights_on_destination_airport_id_id"
    t.index ["origin_airport_id_id"], name: "index_flights_on_origin_airport_id_id"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "flight_executions", "flight_ids"
  add_foreign_key "flight_executions", "passenger_ids"
  add_foreign_key "flight_executions", "user_ids"
  add_foreign_key "flights", "airplanes"
  add_foreign_key "flights", "destination_airport_ids"
  add_foreign_key "flights", "origin_airport_ids"
end

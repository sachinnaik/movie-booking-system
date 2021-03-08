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

ActiveRecord::Schema.define(version: 2021_03_08_124727) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.boolean "is_active"
    t.string "language"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["language"], name: "index_movies_on_language"
    t.index ["name"], name: "index_movies_on_name"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "theatre_id"
    t.integer "show_time_id"
    t.integer "user_id"
    t.json "seats"
    t.integer "queue_status", default: 0
    t.decimal "amount", precision: 8, scale: 2, default: "0.0"
    t.string "payment_mode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "show_times", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "theatre_id"
    t.time "start_time"
    t.time "end_time"
    t.date "show_date"
    t.json "seats"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "theatres", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "city_id"
    t.integer "capacity"
    t.integer "sections"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_theatres_on_name"
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

end

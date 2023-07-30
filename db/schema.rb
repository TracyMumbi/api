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

ActiveRecord::Schema[7.0].define(version: 2023_07_30_170812) do
  create_table "campuses", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "type_campus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "candidates", force: :cascade do |t|
    t.string "reg_no"
    t.string "student_name"
    t.string "student_email"
    t.integer "voting_phone_number"
    t.string "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "admin"
    t.string "student_voter"
    t.string "delegate"
    t.string "candidate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nominees", force: :cascade do |t|
    t.string "name"
    t.integer "votes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_groups", force: :cascade do |t|
    t.string "user_id"
    t.string "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.string "VVPAT_ref"
    t.string "condidate_selected"
    t.string "actual_vote_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

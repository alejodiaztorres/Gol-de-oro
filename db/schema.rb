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

ActiveRecord::Schema.define(version: 2019_08_14_234524) do

  create_table "announcements", force: :cascade do |t|
    t.integer "teams_id"
    t.integer "players_id"
    t.integer "goals"
    t.integer "yellowcard"
    t.integer "redcard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["players_id"], name: "index_announcements_on_players_id"
    t.index ["teams_id"], name: "index_announcements_on_teams_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer "teams_id"
    t.integer "result"
    t.string "stadium"
    t.string "competition"
    t.integer "possession"
    t.integer "goalattemps"
    t.integer "faults"
    t.integer "cornerkicks"
    t.date "meetingdate"
    t.string "refereename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teams_id"], name: "index_games_on_teams_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.float "height"
    t.float "weight"
    t.string "nationality"
    t.date "birthdate"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.date "foundation"
    t.string "president"
    t.string "coach"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transfers", force: :cascade do |t|
    t.integer "players_id"
    t.integer "teams_id"
    t.date "debut"
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["players_id"], name: "index_transfers_on_players_id"
    t.index ["teams_id"], name: "index_transfers_on_teams_id"
  end

end

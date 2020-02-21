# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_21_214531) do

  create_table "leaderboards", force: :cascade do |t|
    t.string "queueType"
    t.integer "wins"
    t.integer "losses"
    t.integer "leaguePoints"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "masteries", force: :cascade do |t|
    t.integer "championId"
    t.integer "championLevel"
    t.integer "championPoints"
    t.integer "summoner_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["summoner_id"], name: "index_masteries_on_summoner_id"
  end

  create_table "playeers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "summoners", force: :cascade do |t|
    t.string "summonerId"
    t.string "accountId"
    t.string "summonerName"
    t.integer "summonerLevel"
    t.integer "player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_summoners_on_player_id"
  end

  create_table "summoners_leaderboads", force: :cascade do |t|
    t.integer "summoner_id", null: false
    t.integer "leaderboard_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["leaderboard_id"], name: "index_summoners_leaderboads_on_leaderboard_id"
    t.index ["summoner_id"], name: "index_summoners_leaderboads_on_summoner_id"
  end

  create_table "summoners_leaderboards", force: :cascade do |t|
    t.integer "summoner_Id"
    t.integer "leaderboard_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "masteries", "summoners"
  add_foreign_key "summoners", "players"
  add_foreign_key "summoners_leaderboads", "leaderboards"
  add_foreign_key "summoners_leaderboads", "summoners"
end

# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150917010212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "branches", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gold_reports", force: :cascade do |t|
    t.date     "end_date"
    t.integer  "branch_id"
    t.string   "assistants"
    t.integer  "pawned_capital"
    t.integer  "bought_capital"
    t.integer  "export_real_weight"
    t.integer  "container_qty"
    t.integer  "pawns_listed_total_weight"
    t.integer  "pawns_10k_weight"
    t.integer  "pawns_14k_weight"
    t.integer  "pawns_18k_weight"
    t.integer  "pawns_with_diamonds_weight"
    t.integer  "pawns_saved_weight"
    t.integer  "pawns_stone_weight"
    t.integer  "pawns_other_weight"
    t.integer  "bought_listed_total_weight"
    t.integer  "bought_10k_weight"
    t.integer  "bought_14k_weight"
    t.integer  "bought_18k_weight"
    t.integer  "bought_with_diamonds_weight"
    t.integer  "bought_saved_weight"
    t.integer  "bought_stone_weight"
    t.integer  "bought_other_weight"
    t.string   "aasm_state"
    t.text     "comments"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "gold_reports", ["branch_id"], name: "index_gold_reports_on_branch_id", using: :btree

  create_table "seal_codes", force: :cascade do |t|
    t.integer  "from_branch"
    t.integer  "to_branch"
    t.datetime "date"
    t.string   "barcode"
    t.string   "received_by"
    t.integer  "supposely_contains"
    t.integer  "gold_report_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "seal_codes", ["gold_report_id"], name: "index_seal_codes_on_gold_report_id", using: :btree

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
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "role"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "gold_reports", "branches"
  add_foreign_key "seal_codes", "gold_reports"
end

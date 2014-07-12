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

ActiveRecord::Schema.define(version: 20140712150722) do

  create_table "clients", force: true do |t|
    t.datetime "intvw_date"
    t.string   "client_id"
    t.string   "gender"
    t.boolean  "chronic"
    t.integer  "calculate_age"
    t.integer  "prescreen_total"
    t.integer  "prescreen1_2"
    t.integer  "prescreen35_41"
    t.integer  "prescreen42_48"
    t.integer  "prescreen50"
    t.integer  "total_hmlss_years"
    t.integer  "total_hmlss_months"
    t.datetime "start_date_of_homelessness"
    t.integer  "times_hmlss_housed_again3yrs"
    t.boolean  "money_regular_basis"
    t.boolean  "drug_alcohol_abuse"
    t.boolean  "drug_alcohol_treatment"
    t.boolean  "alcohol_daily_last_month"
    t.boolean  "hosp_emotions_nerves"
    t.boolean  "mhp_professional_appt"
    t.boolean  "mht_against_will"
    t.boolean  "trauma_not_sought_help"
    t.boolean  "dual_diagnosis"
    t.boolean  "mobility_limits"
    t.string   "citizenship_status"
    t.boolean  "military"
    t.boolean  "jail"
    t.boolean  "prison"
    t.boolean  "ci_incarceration"
    t.boolean  "hiv_aid"
    t.string   "state"
    t.integer  "user_id"
    t.string   "program_matched"
    t.string   "homeless_verification"
    t.string   "disability_verification"
    t.boolean  "income_verification"
    t.boolean  "identity_verification"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count"
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

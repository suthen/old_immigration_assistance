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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131102193414) do

  create_table "immigrant_profiles", :force => true do |t|
    t.string   "destination_country_code"
    t.string   "citizenship_country_code"
    t.string   "postal_code"
    t.date     "date_of_first_entry"
    t.boolean  "exact_date_of_entry_known"
    t.boolean  "recently_traveled_outside_destination_country"
    t.integer  "current_age"
    t.string   "documentation_type"
    t.date     "documentation_expiry"
    t.string   "visa_type"
    t.string   "documentation_issuing_country_code"
    t.string   "documentation_issuing_state"
    t.string   "legal_status"
    t.date     "legal_status_expiry"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

end

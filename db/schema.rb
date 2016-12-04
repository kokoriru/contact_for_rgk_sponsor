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

ActiveRecord::Schema.define(version: 20161204092002) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string   "company_name"
    t.string   "your_name"
    t.string   "your_mail_address"
    t.text     "company_information"
    t.string   "company_hp_url"
    t.boolean  "lightning_talk"
    t.boolean  "pamphlet"
    t.integer  "sponsorship"
    t.string   "invoice_name"
    t.boolean  "invoice_item"
    t.text     "invoice_item_other"
    t.boolean  "invoice_sending"
    t.integer  "envelope_postal_code"
    t.string   "envelope_address"
    t.string   "envelope_department"
    t.string   "envelope_name"
    t.string   "envelope_mail_address"
    t.text     "etc"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end

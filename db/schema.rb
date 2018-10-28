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

ActiveRecord::Schema.define(version: 2018_10_28_173240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blood_types", force: :cascade do |t|
    t.string "group"
    t.string "rh"
    t.boolean "hasHIV"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "document_types", force: :cascade do |t|
    t.string "longname"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enterprise_sectors", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enterprises", force: :cascade do |t|
    t.string "name"
    t.string "nit"
    t.string "address"
    t.string "phone"
    t.string "website"
    t.string "facebook_id"
    t.string "instagram_id"
    t.decimal "latitude"
    t.decimal "longitude"
    t.text "description"
    t.bigint "enterprise_sector_id"
    t.string "isPublic"
    t.string "logo"
    t.string "coverPage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enterprise_sector_id"], name: "index_enterprises_on_enterprise_sector_id"
  end

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.date "birthday"
    t.string "email"
    t.string "password"
    t.bigint "gender_id"
    t.bigint "document_type_id"
    t.string "documentNumber"
    t.string "phone"
    t.string "cellphone"
    t.integer "civicoins"
    t.bigint "blood_type_id"
    t.string "address"
    t.string "nationality"
    t.string "secondaryNationality"
    t.string "pictureLarge"
    t.string "pictureMedium"
    t.string "pictureThumbnail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blood_type_id"], name: "index_users_on_blood_type_id"
    t.index ["document_type_id"], name: "index_users_on_document_type_id"
    t.index ["gender_id"], name: "index_users_on_gender_id"
  end

  add_foreign_key "enterprises", "enterprise_sectors"
  add_foreign_key "users", "blood_types"
  add_foreign_key "users", "document_types"
  add_foreign_key "users", "genders"
end

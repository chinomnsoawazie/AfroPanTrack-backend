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

ActiveRecord::Schema.define(version: 2020_03_22_192813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "barters", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "requestor_id"
    t.string "item_description"
    t.string "quantity"
    t.string "category"
    t.boolean "done"
    t.integer "receiver_id"
    t.string "date_done"
    t.boolean "verified"
    t.string "verified_by"
    t.string "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_barters_on_user_id"
  end

  create_table "facts", force: :cascade do |t|
    t.string "organization"
    t.string "source_or_link"
    t.string "date_published"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "helps", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "requestor_id"
    t.string "description"
    t.string "date_requested"
    t.string "location"
    t.string "date_required"
    t.integer "helper_id"
    t.boolean "status"
    t.string "help_offer_date"
    t.string "date_completed"
    t.boolean "verified"
    t.string "verified_by"
    t.string "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_helps_on_user_id"
  end

  create_table "quarantine_centres", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "state"
    t.string "city"
    t.string "lga"
    t.string "city_town_or_village"
    t.string "nearest_landmark"
    t.float "lat"
    t.float "lng"
    t.integer "phone"
    t.string "email"
    t.boolean "verified"
    t.string "verified_by"
    t.string "verification_notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer "user_id"
    t.string "country"
    t.string "state"
    t.string "city"
    t.string "lga"
    t.string "city_town_or_village"
    t.string "nearest_landmark"
    t.string "persons_involved"
    t.string "description"
    t.float "lat"
    t.float "lng"
    t.boolean "medical_attention_observed"
    t.string "medical_attention_description"
    t.boolean "can_we_follow_up"
    t.boolean "verified"
    t.string "verified_by"
    t.string "verification_notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "updates", force: :cascade do |t|
    t.string "description"
    t.string "organization"
    t.string "country"
    t.string "source_or_link"
    t.string "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.integer "phone_no"
    t.string "country"
    t.string "state"
    t.string "province"
    t.string "city"
    t.string "lga"
    t.string "street_address"
    t.string "facebook_name"
    t.string "twitter_handle"
    t.boolean "ban_status"
    t.string "ban_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "email_confirmed", default: false
    t.string "confirm_token"
    t.boolean "admin", default: false
    t.boolean "moderator", default: false
    t.boolean "allowed_to_request", default: false
    t.boolean "allowed_to_report", default: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "barters", "users"
  add_foreign_key "helps", "users"
end

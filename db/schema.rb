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

ActiveRecord::Schema.define(version: 2020_09_10_152053) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
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

  create_table "blogs", force: :cascade do |t|
    t.integer "user_id"
    t.string "b_title_01"
    t.string "b_title_02"
    t.string "b_title_03"
    t.string "b_link_01"
    t.string "b_link_02"
    t.string "b_link_03"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.text "description"
    t.boolean "display_in_navbar", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "featureds", force: :cascade do |t|
    t.string "ftitle"
    t.string "furl"
    t.string "fimage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "f_image_01"
    t.string "f_image_02"
    t.string "f_image_03"
    t.string "f_image_04"
    t.string "f_image_05"
    t.string "f_image_06"
    t.string "f_subtitle_01"
    t.string "f_subtitle_02"
    t.string "f_subtitle_03"
    t.string "f_subtitle_04"
    t.string "f_subtitle_05"
    t.string "f_subtitle_06"
    t.string "f_link_01"
    t.string "f_link_02"
    t.string "f_link_03"
    t.string "f_link_04"
    t.string "f_link_05"
    t.string "f_link_06"
    t.text "f_description_01"
    t.text "f_description_02"
    t.text "f_description_03"
    t.text "f_description_04"
    t.text "f_description_05"
    t.text "f_description_06"
    t.string "f_spare_01"
    t.string "f_spare_02"
    t.string "f_spare_03"
    t.string "f_spare_04"
    t.string "f_spare_05"
    t.string "f_spare_06"
    t.string "f_spare_07"
    t.string "f_spare_08"
    t.string "f_spare_09"
    t.string "f_spare_10"
  end

  create_table "guides", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.text "description"
    t.boolean "display_in_navbar", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "post_id"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.string "link"
    t.string "source"
    t.string "video"
    t.string "image_toggle"
    t.text "description"
    t.float "is_price"
    t.float "was_price"
    t.float "pct"
    t.integer "category_id"
    t.integer "shop_id"
    t.integer "guide_id"
    t.string "p_spare_01"
    t.string "p_spare_02"
    t.string "p_spare_03"
    t.string "p_spare_04"
    t.string "p_spare_05"
    t.string "p_spare_06"
    t.string "p_spare_07"
    t.string "p_spare_08"
    t.string "p_spare_09"
    t.string "p_spare_10"
    t.string "p_spare_11"
    t.string "p_spare_12"
    t.string "p_spare_13"
    t.string "p_spare_14"
    t.string "p_spare_15"
    t.string "p_spare_16"
    t.string "p_spare_17"
    t.string "p_spare_18"
    t.string "p_spare_19"
    t.string "p_spare_20"
    t.string "p_spare_21"
    t.string "p_spare_22"
    t.string "p_spare_23"
    t.string "p_spare_24"
    t.string "p_spare_25"
    t.string "p_spare_26"
    t.string "p_spare_27"
    t.string "p_spare_28"
    t.string "p_spare_29"
    t.string "p_spare_30"
    t.text "p_spare_31"
    t.text "p_spare_32"
    t.text "p_spare_33"
    t.text "p_spare_34"
    t.text "p_spare_35"
    t.text "p_spare_36"
    t.text "p_spare_37"
    t.text "p_spare_38"
    t.text "p_spare_39"
    t.text "p_spare_40"
    t.float "p_spare_41"
    t.float "p_spare_42"
    t.float "p_spare_43"
    t.float "p_spare_44"
    t.float "p_spare_45"
    t.float "p_spare_46"
    t.float "p_spare_47"
    t.float "p_spare_48"
    t.float "p_spare_49"
    t.float "p_spare_50"
    t.float "p_spare_51"
    t.float "p_spare_52"
    t.float "p_spare_53"
    t.float "p_spare_54"
    t.float "p_spare_55"
    t.integer "p_spare_56"
    t.integer "p_spare_57"
    t.integer "p_spare_58"
    t.integer "p_spare_59"
    t.integer "p_spare_60"
    t.decimal "p_spare_61"
    t.decimal "p_spare_62"
    t.decimal "p_spare_63"
    t.decimal "p_spare_64"
    t.decimal "p_spare_65"
    t.datetime "p_spare_66"
    t.datetime "p_spare_67"
    t.datetime "p_spare_68"
    t.datetime "p_spare_69"
    t.datetime "p_spare_70"
    t.date "p_spare_71"
    t.date "p_spare_72"
    t.date "p_spare_73"
    t.date "p_spare_74"
    t.date "p_spare_75"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_posts_on_category_id"
    t.index ["guide_id"], name: "index_posts_on_guide_id"
    t.index ["shop_id"], name: "index_posts_on_shop_id"
  end

  create_table "posts_tags", id: false, force: :cascade do |t|
    t.integer "post_id"
    t.integer "tag_id"
    t.index ["post_id"], name: "index_posts_tags_on_post_id"
    t.index ["tag_id"], name: "index_posts_tags_on_tag_id"
  end

  create_table "shops", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.text "description"
    t.boolean "display_in_navbar", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

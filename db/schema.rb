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

ActiveRecord::Schema.define(version: 2021_01_01_134730) do

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

  create_table "connections", force: :cascade do |t|
    t.integer "user_id"
    t.string "con_title"
    t.string "con_image"
    t.string "con_link"
    t.string "con_friendly_id"
    t.string "con_spare_01"
    t.string "con_spare_02"
    t.string "con_spare_03"
    t.string "con_spare_04"
    t.string "con_spare_05"
    t.string "con_spare_06"
    t.string "con_spare_07"
    t.string "con_spare_08"
    t.string "con_spare_09"
    t.string "con_spare_10"
    t.string "con_spare_11"
    t.string "con_spare_12"
    t.string "con_spare_13"
    t.string "con_spare_14"
    t.string "con_spare_15"
    t.string "con_spare_16"
    t.string "con_spare_17"
    t.string "con_spare_18"
    t.string "con_spare_19"
    t.string "con_spare_20"
    t.text "con_spare_31"
    t.text "con_spare_32"
    t.text "con_spare_33"
    t.text "con_spare_34"
    t.text "con_spare_35"
    t.float "con_spare_41"
    t.float "con_spare_42"
    t.float "con_spare_43"
    t.float "con_spare_44"
    t.float "con_spare_45"
    t.float "con_spare_46"
    t.float "con_spare_47"
    t.float "con_spare_48"
    t.float "con_spare_49"
    t.float "con_spare_50"
    t.integer "con_spare_56"
    t.integer "con_spare_57"
    t.integer "con_spare_58"
    t.integer "con_spare_59"
    t.integer "con_spare_60"
    t.decimal "con_spare_61"
    t.decimal "con_spare_62"
    t.decimal "con_spare_63"
    t.decimal "con_spare_64"
    t.decimal "con_spare_65"
    t.datetime "con_spare_66"
    t.datetime "con_spare_67"
    t.datetime "con_spare_68"
    t.datetime "con_spare_69"
    t.datetime "con_spare_70"
    t.date "con_spare_71"
    t.date "con_spare_72"
    t.date "con_spare_73"
    t.date "con_spare_74"
    t.date "con_spare_75"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_connections_on_slug", unique: true
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
    t.integer "user_id"
    t.string "ff_title"
    t.string "ff_link"
    t.string "ff_source"
    t.string "ff_hashtag"
    t.text "ff_description"
    t.float "ff_is_price"
    t.float "ff_was_price"
    t.float "ff_pct"
    t.string "ff_spare_01"
    t.string "ff_spare_02"
    t.string "ff_spare_03"
    t.string "ff_spare_04"
    t.string "ff_spare_05"
    t.string "ff_spare_06"
    t.string "ff_spare_07"
    t.string "ff_spare_08"
    t.string "ff_spare_09"
    t.string "ff_spare_10"
    t.string "ff_spare_11"
    t.string "ff_spare_12"
    t.string "ff_spare_13"
    t.string "ff_spare_14"
    t.string "ff_spare_15"
    t.string "ff_spare_16"
    t.string "ff_spare_17"
    t.string "ff_spare_18"
    t.string "ff_spare_19"
    t.string "ff_spare_20"
    t.string "ff_spare_21"
    t.string "ff_spare_22"
    t.string "ff_spare_23"
    t.string "ff_spare_24"
    t.string "ff_spare_25"
    t.string "ff_spare_26"
    t.string "ff_spare_27"
    t.string "ff_spare_28"
    t.string "ff_spare_29"
    t.string "ff_spare_30"
    t.text "ff_spare_31"
    t.text "ff_spare_32"
    t.text "ff_spare_33"
    t.text "ff_spare_34"
    t.text "ff_spare_35"
    t.text "ff_spare_36"
    t.text "ff_spare_37"
    t.text "ff_spare_38"
    t.text "ff_spare_39"
    t.text "ff_spare_40"
    t.float "ff_spare_41"
    t.float "ff_spare_42"
    t.float "ff_spare_43"
    t.float "ff_spare_44"
    t.float "ff_spare_45"
    t.float "ff_spare_46"
    t.float "ff_spare_47"
    t.float "ff_spare_48"
    t.float "ff_spare_49"
    t.float "ff_spare_50"
    t.float "ff_spare_51"
    t.float "ff_spare_52"
    t.float "ff_spare_53"
    t.float "ff_spare_54"
    t.float "ff_spare_55"
    t.integer "ff_spare_56"
    t.integer "ff_spare_57"
    t.integer "ff_spare_58"
    t.integer "ff_spare_59"
    t.integer "ff_spare_60"
    t.decimal "ff_spare_61"
    t.decimal "ff_spare_62"
    t.decimal "ff_spare_63"
    t.decimal "ff_spare_64"
    t.decimal "ff_spare_65"
    t.datetime "ff_spare_66"
    t.datetime "ff_spare_67"
    t.datetime "ff_spare_68"
    t.datetime "ff_spare_69"
    t.datetime "ff_spare_70"
    t.date "ff_spare_71"
    t.date "ff_spare_72"
    t.date "ff_spare_73"
    t.date "ff_spare_74"
  end

  create_table "featureds_tags", id: false, force: :cascade do |t|
    t.integer "featured_id"
    t.integer "tag_id"
    t.index ["featured_id"], name: "index_featureds_tags_on_featured_id"
    t.index ["tag_id"], name: "index_featureds_tags_on_tag_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "guides", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.text "description"
    t.boolean "display_in_navbar", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gui_title"
    t.string "gui_link"
    t.string "gui_source"
    t.string "gui_hashtag"
    t.text "gui_description"
    t.float "gui_is_price"
    t.float "gui_was_price"
    t.float "gui_pct"
    t.string "gui_spare_01"
    t.string "gui_spare_02"
    t.string "gui_spare_03"
    t.string "gui_spare_04"
    t.string "gui_spare_05"
    t.string "gui_spare_06"
    t.string "gui_spare_07"
    t.string "gui_spare_08"
    t.string "gui_spare_09"
    t.string "gui_spare_10"
    t.string "gui_spare_11"
    t.string "gui_spare_12"
    t.string "gui_spare_13"
    t.string "gui_spare_14"
    t.string "gui_spare_15"
    t.text "gui_spare_31"
    t.text "gui_spare_32"
    t.text "gui_spare_33"
    t.text "gui_spare_34"
    t.text "gui_spare_35"
    t.text "gui_spare_36"
    t.text "gui_spare_37"
    t.text "gui_spare_38"
    t.text "gui_spare_39"
    t.text "gui_spare_40"
    t.float "gui_spare_41"
    t.float "gui_spare_42"
    t.float "gui_spare_43"
    t.float "gui_spare_44"
    t.float "gui_spare_45"
    t.float "gui_spare_46"
    t.float "gui_spare_47"
    t.float "gui_spare_48"
    t.float "gui_spare_49"
    t.float "gui_spare_50"
    t.float "gui_spare_51"
    t.float "gui_spare_52"
    t.float "gui_spare_53"
    t.float "gui_spare_54"
    t.float "gui_spare_55"
    t.integer "gui_spare_56"
    t.integer "gui_spare_57"
    t.integer "gui_spare_58"
    t.integer "gui_spare_59"
    t.integer "gui_spare_60"
    t.decimal "gui_spare_61"
    t.decimal "gui_spare_62"
    t.decimal "gui_spare_63"
    t.decimal "gui_spare_64"
    t.decimal "gui_spare_65"
    t.datetime "gui_spare_66"
    t.datetime "gui_spare_67"
    t.datetime "gui_spare_68"
    t.datetime "gui_spare_69"
    t.datetime "gui_spare_70"
    t.date "gui_spare_71"
    t.date "gui_spare_72"
    t.date "gui_spare_73"
    t.date "gui_spare_74"
    t.date "gui_spare_75"
  end

  create_table "guides_tags", id: false, force: :cascade do |t|
    t.integer "guide_id"
    t.integer "tag_id"
    t.index ["guide_id"], name: "index_guides_tags_on_guide_id"
    t.index ["tag_id"], name: "index_guides_tags_on_tag_id"
  end

  create_table "halfprices", force: :cascade do |t|
    t.integer "user_id"
    t.string "hf_title"
    t.string "hf_link"
    t.string "hf_image"
    t.text "hf_body"
    t.integer "hfcategory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hfcategory_id"], name: "index_halfprices_on_hfcategory_id"
  end

  create_table "hfcategories", force: :cascade do |t|
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

  create_table "sales", force: :cascade do |t|
    t.integer "user_id"
    t.string "s_title"
    t.string "s_link"
    t.string "s_source"
    t.string "s_video"
    t.string "s_hashtag"
    t.text "s_description"
    t.float "s_is_price"
    t.float "s_was_price"
    t.float "s_pct"
    t.integer "scategory_id"
    t.string "s_spare_01"
    t.string "s_spare_02"
    t.string "s_spare_03"
    t.string "s_spare_04"
    t.string "s_spare_05"
    t.string "s_spare_06"
    t.string "s_spare_07"
    t.string "s_spare_08"
    t.string "s_spare_09"
    t.string "s_spare_10"
    t.string "s_spare_11"
    t.string "s_spare_12"
    t.string "s_spare_13"
    t.string "s_spare_14"
    t.string "s_spare_15"
    t.string "s_spare_16"
    t.string "s_spare_17"
    t.string "s_spare_18"
    t.string "s_spare_19"
    t.string "s_spare_20"
    t.string "s_spare_21"
    t.string "s_spare_22"
    t.string "s_spare_23"
    t.string "s_spare_24"
    t.string "s_spare_25"
    t.string "s_spare_26"
    t.string "s_spare_27"
    t.string "s_spare_28"
    t.string "s_spare_29"
    t.string "s_spare_30"
    t.text "s_spare_31"
    t.text "s_spare_32"
    t.text "s_spare_33"
    t.text "s_spare_34"
    t.text "s_spare_35"
    t.text "s_spare_36"
    t.text "s_spare_37"
    t.text "s_spare_38"
    t.text "s_spare_39"
    t.text "s_spare_40"
    t.float "s_spare_41"
    t.float "s_spare_42"
    t.float "s_spare_43"
    t.float "s_spare_44"
    t.float "s_spare_45"
    t.float "s_spare_46"
    t.float "s_spare_47"
    t.float "s_spare_48"
    t.float "s_spare_49"
    t.float "s_spare_50"
    t.float "s_spare_51"
    t.float "s_spare_52"
    t.float "s_spare_53"
    t.float "s_spare_54"
    t.float "s_spare_55"
    t.integer "s_spare_56"
    t.integer "s_spare_57"
    t.integer "s_spare_58"
    t.integer "s_spare_59"
    t.integer "s_spare_60"
    t.decimal "s_spare_61"
    t.decimal "s_spare_62"
    t.decimal "s_spare_63"
    t.decimal "s_spare_64"
    t.decimal "s_spare_65"
    t.datetime "s_spare_66"
    t.datetime "s_spare_67"
    t.datetime "s_spare_68"
    t.datetime "s_spare_69"
    t.datetime "s_spare_70"
    t.date "s_spare_71"
    t.date "s_spare_72"
    t.date "s_spare_73"
    t.date "s_spare_74"
    t.date "s_spare_75"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scategory_id"], name: "index_sales_on_scategory_id"
  end

  create_table "sales_tags", id: false, force: :cascade do |t|
    t.integer "sale_id"
    t.integer "tag_id"
    t.index ["sale_id"], name: "index_sales_tags_on_sale_id"
    t.index ["tag_id"], name: "index_sales_tags_on_tag_id"
  end

  create_table "scategories", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.text "description"
    t.boolean "display_in_navbar", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

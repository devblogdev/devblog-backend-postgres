# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_03_12_002848) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "description"
    t.bigint "user_id", null: false
    t.bigint "post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.text "url"
    t.text "caption"
    t.text "alt"
    t.text "format"
    t.text "name"
    t.integer "size"
    t.text "s3key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "post_id", null: false
    t.text "imgur_delete_hash"
    t.index ["post_id"], name: "index_images_on_post_id"
  end

  create_table "omni_auth_providers", force: :cascade do |t|
    t.text "provider"
    t.text "public_keys"
    t.integer "expires"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text "title"
    t.integer "coming_from", default: 0
    t.text "body"
    t.text "category"
    t.text "abstract"
    t.text "url"
    t.integer "status", default: 0
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "author_name"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "user_images", force: :cascade do |t|
    t.text "url"
    t.text "caption"
    t.text "alt"
    t.text "format"
    t.text "name"
    t.integer "size"
    t.text "s3key"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "imgur_delete_hash"
    t.index ["user_id"], name: "index_user_images_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.text "password_digest"
    t.text "first_name"
    t.text "last_name"
    t.jsonb "bio", default: "{}", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "private", default: "{}", null: false
    t.boolean "email_confirmed", default: false
    t.text "confirm_token"
    t.text "uid"
    t.text "provider"
    t.text "username"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "images", "posts"
  add_foreign_key "posts", "users"
  add_foreign_key "user_images", "users"
end

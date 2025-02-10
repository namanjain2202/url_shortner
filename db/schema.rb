ActiveRecord::Schema.define(version: 2023_11_01_000000) do

  create_table "shortened_urls", force: :cascade do |t|
    t.string "original_url", null: false
    t.string "shortened_url", null: false
    t.bigint "user_id", null: false
    t.integer "clicks", default: 0
    t.string "referrer"
    t.string "geolocation"
    t.string "device_type"
    t.datetime "expires_at"
    t.string "custom_alias"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["custom_alias"], name: "index_shortened_urls_on_custom_alias", unique: true
    t.index ["shortened_url"], name: "index_shortened_urls_on_shortened_url", unique: true
    t.index ["user_id"], name: "index_shortened_urls_on_user_id"
  end

  add_foreign_key "shortened_urls", "users"
end
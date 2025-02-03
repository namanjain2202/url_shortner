ActiveRecord::Schema.define(version: 2025_02_04_123615) do

    # Enable extensions if using PostgreSQL
    # enable_extension "plpgsql"
  
    create_table "admin_activities", force: :cascade do |t|
      t.integer "admin_id"
      t.string "action"
      t.integer "url_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["url_id"], name: "index_admin_activities_on_url_id"
      t.index ["admin_id"], name: "index_admin_activities_on_admin_id"
    end
  
    create_table "api_tokens", force: :cascade do |t|
      t.integer "user_id"
      t.string "token"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["token"], name: "index_api_tokens_on_token", unique: true
      t.index ["user_id"], name: "index_api_tokens_on_user_id"
    end
  
    create_table "click_analytics", force: :cascade do |t|
      t.integer "url_id"
      t.string "referrer"
      t.string "geolocation"
      t.string "device_type"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["url_id"], name: "index_click_analytics_on_url_id"
    end
  
    create_table "rate_limits", force: :cascade do |t|
      t.integer "user_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["user_id"], name: "index_rate_limits_on_user_id"
    end
  
    create_table "urls", force: :cascade do |t|
      t.string "original_url"
      t.string "shortened_url"
      t.integer "user_id"
      t.integer "clicks_count", default: 0
      t.datetime "expiration_date"
      t.string "custom_alias"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["shortened_url"], name: "index_urls_on_shortened_url", unique: true
      t.index ["user_id"], name: "index_urls_on_user_id"
    end
  
    create_table "users", force: :cascade do |t|
      t.string "email", default: "", null: false
      t.string "encrypted_password", default: "", null: false
      t.string "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.integer "sign_in_count", default: 0, null: false
      t.datetime "current_sign_in_at"
      t.datetime "last_sign_in_at"
      t.string "current_sign_in_ip"
      t.string "last_sign_in_ip"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["email"], name: "index_users_on_email", unique: true
      t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    end
  
  end  
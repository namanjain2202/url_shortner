class CreateShortenedUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :shortened_urls do |t|
      t.string :original_url, null: false
      t.string :shortened_url, null: false
      t.references :user, null: false, foreign_key: true
      t.integer :clicks, default: 0
      t.string :referrer
      t.string :geolocation
      t.string :device_type
      t.datetime :expires_at
      t.string :custom_alias, unique: true

      t.timestamps
    end
    add_index :shortened_urls, :shortened_url, unique: true
    add_index :shortened_urls, :custom_alias, unique: true
  end
end
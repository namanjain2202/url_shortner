class CreateClickAnalytics < ActiveRecord::Migration[6.0]
    def change
      create_table :click_analytics do |t|
        t.references :url, foreign_key: true
        t.string :referrer
        t.string :geolocation
        t.string :device_type
        t.timestamps
      end
    end
  end
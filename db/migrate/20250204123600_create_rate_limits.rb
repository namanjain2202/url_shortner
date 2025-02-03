class CreateRateLimits < ActiveRecord::Migration[6.0]
    def change
      create_table :rate_limits do |t|
        t.references :user, foreign_key: true
        t.datetime :created_at
        t.timestamps
      end
    end
  end
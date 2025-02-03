class CreateUrls < ActiveRecord::Migration[6.0]
    def change
      create_table :urls do |t|
        t.string :original_url
        t.string :shortened_url
        t.references :user, foreign_key: true
        t.integer :clicks_count, default: 0
        t.datetime :expiration_date
        t.string :custom_alias
        t.timestamps
      end
      add_index :urls, :shortened_url, unique: true
    end
  end  
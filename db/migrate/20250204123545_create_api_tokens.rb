class CreateApiTokens < ActiveRecord::Migration[6.0]
    def change
      create_table :api_tokens do |t|
        t.references :user, foreign_key: true
        t.string :token
        t.timestamps
      end
      add_index :api_tokens, :token, unique: true
    end
  end
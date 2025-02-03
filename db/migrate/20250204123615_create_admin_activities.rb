class CreateAdminActivities < ActiveRecord::Migration[6.0]
    def change
      create_table :admin_activities do |t|
        t.references :admin, foreign_key: true
        t.string :action
        t.references :url, foreign_key: true
        t.timestamps
      end
    end
  end
class CreateUserVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :user_venues do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end

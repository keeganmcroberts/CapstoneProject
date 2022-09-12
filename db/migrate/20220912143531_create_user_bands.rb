class CreateUserBands < ActiveRecord::Migration[6.1]
  def change
    create_table :user_bands do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :band, null: false, foreign_key: true

      t.timestamps
    end
  end
end

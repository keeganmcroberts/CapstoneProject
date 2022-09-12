class CreateVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.belongs_to :city, null: false, foreign_key: true
      t.string :image_url

      t.timestamps
    end
  end
end

class CreateConcertDates < ActiveRecord::Migration[6.1]
  def change
    create_table :concert_dates do |t|
      t.string :date

      t.timestamps
    end
  end
end

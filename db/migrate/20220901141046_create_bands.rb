class CreateBands < ActiveRecord::Migration[6.1]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :genre
      t.string :imaage_url

      t.timestamps
    end
  end
end

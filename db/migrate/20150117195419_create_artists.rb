class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :location
      t.string :birthday
      t.string :hometown
      t.string :gender
      t.string :nationality
      t.string :genes
      t.string :artsy_artist_id

      t.timestamps
    end
  end
end

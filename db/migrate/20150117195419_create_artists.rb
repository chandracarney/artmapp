class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :location
      t.string :biography
      t.string :blurb
      t.string :gender

      t.timestamps
    end
  end
end

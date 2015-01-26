class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :date
      t.string :image
      t.string :category
      t.string :medium
      t.string :collecting_institution
      t.string :artsy_artwork_id

      t.timestamps
    end
  end
end

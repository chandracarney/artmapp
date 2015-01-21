class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :date
      t.string :image
      t.string :category
      t.string :medium
      t.string :genes
      t.string :collecting_institution
      t.integer :artist_id

      t.timestamps
    end
  end
end

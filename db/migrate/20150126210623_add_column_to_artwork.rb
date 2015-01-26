class AddColumnToArtwork < ActiveRecord::Migration
  def change
    add_column :artworks, :artsy_artwork_id, :string
  end
end

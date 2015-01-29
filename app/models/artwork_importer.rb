class ArtworkImporter
  def import
    artworks = []
    Artsy.new.artworks(1000).each do |artwork|
      if artwork && artwork["_links"]["thumbnail"]
        new_artwork = Artwork.where(artsy_artwork_id: artwork["id"]).first_or_initialize
        if new_artwork.new_record?
          new_artwork.update_attributes(artwork_params(artwork))
          artworks << new_artwork
        end
      end
    end
    artworks
    artworks.each do |artwork|
      artists = Artsy.new.artists_for(artwork)
      artists.each do |artist|
        if artist
          new_artist = Artist.where(artsy_artist_id: artist["id"]).first_or_initialize
          new_artist.update_attributes(artist_params(artist)) if new_artist.new_record?
          new_artist.artworks << artwork
        end
      end
    end
  end

  private

  def artwork_params(artwork)
    {
      artsy_artwork_id:       artwork["id"],
      title:                  artwork["title"],
      date:                   artwork["date"],
      image:                  artwork["_links"]["thumbnail"]["href"].gsub("medium.jpg","larger.jpg"),
      category:               artwork["category"],
      collecting_institution: artwork["collecting_institution"],
      medium:                 artwork["medium"]
    }
  end

  def artist_params(artist)
    {
      artsy_artist_id: artist["id"],
      name:            artist["name"],
      gender:          artist["gender"],
      location:        artist["location"]
    }
  end
end

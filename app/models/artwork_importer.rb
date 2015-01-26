class ArtworkImporter
  def import
    Artsy.new.artworks(50).each do |artwork|
      Artwork.create(artwork_params(artwork))
    end
  end

  private

  def artwork_params(artwork)
    {artsy_artwork_id: artwork["id"],
     title: artwork["title"],
     date: artwork["date"],
     image: artwork["_links"]["thumbnail"]["href"].gsub("medium.jpg","larger.jpg"),
     category: artwork["category"],
     collecting_institution: artwork["collecting_institution"],
     medium: artwork["medium"]
    }
  end
end

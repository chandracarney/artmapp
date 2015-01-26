class ArtworkImporter
  def import
    artworks = []
    Artsy.new.artworks(100).each do |artwork|
      new_artwork = Artwork.where(artsy_artwork_id: artwork["id"]).first_or_initialize
      if new_artwork.new_record?
        new_artwork.update_attributes(artwork_params(artwork))
        artworks << new_artwork
      end
    end
    artworks
    artworks.each do |artwork|
      artists = Artsy.new.artists_for(artwork)
      artists.each do |artist|
        new_artist = Artist.where(artsy_artist_id: artist["id"]).first_or_initialize
        new_artist.update_attributes(artist_params(artist)) if new_artist.new_record?
        new_artist.artworks << artwork
      end
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

  def artist_params(artist)
    {artsy_artist_id: artist["id"],
     name: artist["name"],
     gender: artist["gender"],
     location: artist["location"]
    }
  end

  # [{"id"=>"4d8b92b64eb68a1b2c000414", "created_at"=>"2010-08-26T14:33:33+00:00", "updated_at"=>"2015-01-26T17:29:16+00:00", "name"=>"Gustav Klimt", "gender"=>"male", "birthday"=>"1862", "hometown"=>"Baumgarten, Austria", "location"=>"Vienna, Austria", "nationality"=>"Austrian", "_links"=>{"curies"=>[{"name"=>"image", "href"=>"https://d32dm0rphc51dk.cloudfront.net/n3RTu8EOaXrq3UCBXjh1Ag/{rel}", "templated"=>true}], "thumbnail"=>{"href"=>"http://static3.artsy.net/artist_images/52f6bde44a04f5d504f6a44b/1/four_thirds.jpg"}, "image:self"=>{"href"=>"{?image_version}.jpg", "templated"=>true}, "self"=>{"href"=>"https://api.artsy.net/api/artists/4d8b92b64eb68a1b2c000414"}, "permalink"=>{"href"=>"http://www.artsy.net/artist/gustav-klimt"}, "artworks"=>{"href"=>"https://api.artsy.net/api/artworks?artist_id=4d8b92b64eb68a1b2c000414"}, "similar_artists"=>{"href"=>"https://api.artsy.net/api/artists?similar_to_artist_id=4d8b92b64eb68a1b2c000414"}, "similar_contemporary_artists"=>{"href"=>"https://api.artsy.net/api/artists?similar_to_artist_id=4d8b92b64eb68a1b2c000414&similarity_type=contemporary"}, "genes"=>{"href"=>"https://api.artsy.net/api/genes?artist_id=4d8b92b64eb68a1b2c000414"}}, "image_versions"=>["four_thirds", "large", "square", "tall"]}]
#  => Artist( blurb: string, created_at: datetime, updated_at: dat
end

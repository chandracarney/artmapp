class UpdateArtistWorker
  include Sidekiq::Worker

  def perform
    #fetch/get artists from api
    Artsy.new.artworks.each do |artwork|
      artists = Artsy.new.artists_for_artwork(artwork["_links"]["artists"]["href"])
      # {"id" => "sdfsdf", "artist" => "Mike"}
      #update/save artists in the db
      db_artwork = Atwork.find_or_create_by(api_id: artwork["id"])
      db_artwork.update_attributes(
        title: artwork["title"],
        date: artwork["date"]
      )
      artists.each do |artist|
        db_artwork.artists << Artist.find_or_create_by(api_id: artist["id"])
      end
    end

  end
end

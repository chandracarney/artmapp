class Artsy
  include HTTParty
  base_uri 'https://api.artsy.net/api/'
  debug_output $stdout

def artworks(size=300)
    artworks = self.class.get("/artworks?total_count=1&size=#{size}", :headers => { "X-XAPP-Token" => ENV['ARTSY_XAPP_TOKEN']})
    artworks["_embedded"]["artworks"]
  end

  def artists_for(artwork)
    artists = self.class.get("/artists?artwork_id=#{artwork.artsy_artwork_id}", :headers => { "X-XAPP-Token" => ENV['ARTSY_XAPP_TOKEN']})
    artists["_embedded"]["artists"] || []
  end

  # def artists
  #   artists = self.class.get("/artists", :headers => { "X-XAPP-Token" => ENV['ARTSY_XAPP_TOKEN']})
  #   artists["_embedded"]["artists"]
  # end
end

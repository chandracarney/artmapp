class Artsy
  include HTTParty
  base_uri 'https://api.artsy.net/api/'
  debug_output $stdout

  def artworks
    artworks = self.class.get("/artworks", :headers => { "X-XAPP-Token" => ENV['ARTSY_XAPP_TOKEN']})
    artworks["_embedded"]["artworks"]
  end

  def artists
    artists = self.class.get("/artists", :headers => { "X-XAPP-Token" => ENV['ARTSY_XAPP_TOKEN']})
    artists["_embedded"]["artists"]
  end
end

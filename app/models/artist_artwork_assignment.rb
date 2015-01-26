class ArtistArtworkAssignment < ActiveRecord::Base
  belongs_to :artist
  belongs_to :artwork
end

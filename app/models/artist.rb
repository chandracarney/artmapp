class Artist < ActiveRecord::Base
  has_many :artist_artwork_assignments
  has_many :artworks, through: :artist_artwork_assignments
  has_many :user_artist_ratings

  validates :artsy_artist_id, uniqueness: true

  def name_or_unknown
    if self.name.empty?
      "Unknown Artist"
    else
      self.name
    end
  end
end

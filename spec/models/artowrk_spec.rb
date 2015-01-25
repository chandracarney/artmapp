require 'rails_helper'

describe Artwork do
  describe "#random_unseen_by" do
    xit "returns no duplicate artworks" do
      user = User.new(name: "Chandra")
      matisse = Artist.new(name: "HENRI MATISSE")
      gris = Artist.new(name: "JUAN GRIS")
      artwork1 = Artwork.new(title: "Nu bleu, la grenouille", artist_id: matisse.id)
      artwork1 = Artwork.new(title: "Fantômas", artist_id: gris.id)
      user_artwork_rating = UserArtworkRating.new(artwork_id: artwork1.id, user_id: user.id)

      artwork = Artwork.new
      artwork.stub(:random_unseen_by).with(user)


      # expect(Artwork.stubs(:random_unseen_by(user)).to be(artwork2)
      expect(self.random_unseen_by(user)).not_to be(artwork1)


      #it finds artworks
      #sorts them beased on user.id
      #returns unseen artworks
    end
  end
end

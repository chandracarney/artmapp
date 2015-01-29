require 'rails_helper'
require 'pry'

describe Artsy do
  describe "#artworks" do
    it "fetches artworks from the API" do
      VCR.use_cassette("artworks") do
        artworks = Artsy.new.artworks
        expect(artworks[0]["id"]).to be_a(String)
      end
    end
  end

  describe "#artists" do
    it "fetches artists from the API" do
      VCR.use_cassette("artists") do
        artists = Artsy.new.artists_for(artwork)
        expect(artists[0]["id"]).to be_a(String)
      end
    end
  end

  # describe "art"
end

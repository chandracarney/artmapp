require 'rails_helper'

describe Artist do
  describe "#name_or_unknown" do
    it "if unknown artist, then return unknown string" do
      artist = Artist.new()
      expect(artist.name_or_unknown).to eq("Unknown Artist")
    end
  end
end

require('rspec')
require('artist')
require('cd')
require('pry')

describe(Artist) do

  describe(".all") do
    it("is empty at first") do
      expect(Artist.all()).to(eq([]))
    end
  end

  describe("#artist_name") do
    it("returns the artist name") do
      test_artist = Artist.new("Michael Jackson")
      expect(test_artist.artist_name()).to(eq("Michael Jackson"))
    end
  end

  describe("#index") do
    it("gives an index for each artist") do
      test_artist = Artist.new("Michael Jackson")
      expect(test_artist.index()).to(eq(1))
    end
  end

  describe("#save") do
    it("saves artist entry into the array") do
      test_artist = Artist.new("Michael Jackson")
      test_artist.save()
      expect(Artist.all()).to(eq([test_artist]))
    end
  end

  describe(".clear") do
    it("clears out all the artists in the array") do
      test_artist = Artist.new("Michael Jackson").save()
      Artist.clear()
      expect(Artist.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("finds the artist by index") do
      test_artist = Artist.new("Michael Jackson")
      test_artist.save()
      test_artist2 = Artist.new("Billy Ocean")
      test_artist2.save()
      expect(Artist.find(test_artist.index())).to(eq(test_artist))
    end
  end


  # describe("#albums") do
  #   it("returns the album name") do
  #   test_artist = Artist.new("Michael Jackson","album")
  #   expect(test_artist.artist_name()).to(eq(test_artist))
  #   end
  # end

end

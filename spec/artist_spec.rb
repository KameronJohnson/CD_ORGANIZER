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

  describe("#id") do
    it("gives an id for each artist") do
      test_artist = Artist.new("Michael Jackson")
      expect(test_artist.id()).to(eq(1))
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
    it("finds the artist by id") do
      test_artist = Artist.new("Michael Jackson")
      test_artist.save()
      test_artist2 = Artist.new("Billy Ocean")
      test_artist2.save()
      expect(Artist.find(test_artist.id())).to(eq(test_artist))
    end
  end

  describe("#add_album") do
    it("adds an album to the album list of the artist") do
      test_artist = Artist.new("Michael Jackson")
      test_album = CD.new("Michael Jackson", "Thriller")
      test_artist.add_album(test_album)
      expect(test_artist.albums()).to(eq([test_album]))
    end
  end
  # describe("#albums") do
  #   it("returns the album name") do
  #   test_album = Artist.new("Michael Jackson","album")
  #   expect(test_album.albums()).to(eq(test_artist))
  #   end
  # end

end

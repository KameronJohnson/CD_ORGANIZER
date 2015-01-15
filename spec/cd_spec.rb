require('rspec')
require('cd')
require('pry')

describe(CD) do
  before() do
  CD.clear()
  end

    describe(:artist_name) do
      it("returns the artist name") do
        test_artist = CD.new("Michael Jackson", "Thriller")
        test_artist.save()
        expect(test_artist.artist_name()).to(eq("Michael Jackson"))
      end
    end

    describe(:album_name) do
      it("returns the album name") do
        test_album = CD.new("Michael Jackson", "Thriller")
        test_album.save()
        expect(test_album.album_name()).to(eq("Thriller"))
      end
    end

    describe(".all") do
      it("is empty at first") do
        expect(CD.all()).to(eq([]))
      end
    end

    describe(".find_artist") do
      it("will search for the CD by artist name") do
      test_CD=CD.new("Michael Jackson", "Thriller")
      test_CD.save()
        expect(CD.find_artist(test_CD.artist_name())).to(eq(test_CD))

      end
    end

    describe("#save") do
      it("pushes a CD into the array") do
        test_CD = CD.new("Michael Jackson", "Thriller")
        expect(test_CD.save()).to(eq([test_CD]))

      end
    end

    describe(".clear") do
      it("empties out all of the saved words") do
        CD.new("Michael Jackson", "Thriller").save()
        CD.clear()
        expect(CD.all()).to(eq([]))
      end
    end


end #end describe

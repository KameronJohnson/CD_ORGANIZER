class Artist

  @@artists = []

  define_method (:initialize) do |artist_name|
    @artist_name = artist_name
    @albums = []
    @index = @@artists.length().+1
  end

  define_method(:artist_name) do
    @artist_name
  end

  define_method(:albums) do
    @albums
  end

  define_method(:index) do
    @index
  end

  define_method(:save) do
    @@artists.push(self)
  end

  define_singleton_method(:all) do
    @@artists
  end

  define_singleton_method(:clear) do
    @@artists = []
  end

  define_singleton_method(:find) do |search_artist_name|
    found_artist_name = nil
    @@artists.each() do |artist|
      if artist.index() == search_artist_name
        found_artist_name = artist
      end
    end
    found_artist_name
  end
end

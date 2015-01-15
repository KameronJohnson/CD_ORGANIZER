class CD
  @@cds=[]

  define_method(:initialize) do |artist_name, album_name|
    @artist_name = artist_name
    @album_name = album_name
  end

  define_method(:artist_name) do
    @artist_name
  end

  define_method(:album_name) do
    @album_name
  end

  define_singleton_method(:all) do
    @@cds
  end

  define_method(:save) do
    @@cds.push(self)
  end

  define_singleton_method(:find_artist) do |artist_search|
    found_artist = nil
    @@cds.each() do |cd|
      if cd.artist_name() == artist_search
        found_artist = cd
      end
    end
    found_artist
  end

  define_singleton_method(:clear) do
    @@cds = []
  end


end#End Class

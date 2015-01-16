  require('sinatra')
  require('sinatra/reloader')
  also_reload("lib/**/*.rb")
  require('./lib/cd')
  require('./lib/artist')


  get('/') do
    @artists = Artist.all()
    erb(:index)
  end

  post('/artists') do
    artist_name = params.fetch('artist_name')
    Artist.new(artist_name).save()
    @artists = Artist.all()
    erb(:index)
  end

  post('/cds') do
    artist_name = params.fetch('artist_name')
    album_name = params.fetch('album_name')
    @cd = CD.new(artist_name, album_name)
    @cd.save()
    @artist = Artist.find(params.fetch('artist_id').to_i())
    @artist.add_album(@cd)
    erb(:artist)
  end

  get('/cds/:id') do
    @cd = CD.find(params.fetch('id'))
    erb(:cd)
  end

  get('/artists/:id') do
    @artist = Artist.find(params.fetch('id').to_i())
    erb(:artist)
  end

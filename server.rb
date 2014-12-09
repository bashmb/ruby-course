require 'sinatra'
require './lib/songify.rb'

set :bind, '0.0.0.0' # This is needed for Vagrant

get '/' do
  erb :index
end

get '/albums' do
  db = Songify.create_db_connection('songify_dev')
  @albums = Songify::AlbumRepo.all(db)
  erb :"albums/index"
end

post '/albums' do
  db = Songify.create_db_connection('songify_dev')
  album = Songify::AlbumRepo.save(db, {
    'title' => params[:title]
  })
  redirect to '/albums'
end

get '/albums' do
  db = Songify.create_db_connection('songify_dev')
  song = Songify::SongRepo.save(db, {
    'title' => params[:title]
  })
  redirect to '/songs'
end

get '/albums/:album_id' do
  db = Songify.create_db_connection('songify_dev')
  

  @album_title = Songify::SongRepo.album_find(db, 
    params[:album_id])
  @song_list = Songify::SongRepo.songs_by_album(db,
    params[:album_id])
  erb :"albums/add_song"
end

post '/add_song' do
  @song_data = {"title" => params[:title], "album_id" => params[:album_id]}
  
  db = Songify.create_db_connection('songify_dev')
  @new_song = Songify::SongRepo.add(db, @song_data)
  goto = params[:albumID]
  album_id = params[:album_id]
  redirect :"/albums"
end


get '/genres' do
  db = Songify.create_db_connection('songify_dev')
  @genres = Songify::GenreRepo.all(db)
  erb :"genres/index"
end

post '/genres' do
  db = Songify.create_db_connection('songify_dev')
  album = Songify::GenreRepo.save(db, {
    'name' => params[:name]
  })
  redirect to '/genres'
end

class ArtistsController < ApplicationController

  get '/artists' do
    @artists = Artist.all
    erb :'artist/index'
  end

  get '/artists/new' do
    erb :'artist/new'
  end

  post '/artists' do
    @artist = Artist.create(params)
    redirect :"artist/#{@artist.id}"
  end

  get '/artists/:id' do
    @artist = Artist.find_by_id(params[:id])
    erb :'artist/show'
  end

  get '/artists/:id/edit' do
    @artist = Artist.find_by_id(params[:id])
    erb :'artist/edit'
  end

  patch '/artists/:id' do
    @artist = Artist.find(params[:id])
    @artist.update(params["artists"])
    redirect :"artists/#{@artist.id}"
  end




end

ENV['RACK_ENV'] ||= 'development'
config.assets.initialize_on_precompile = false
require 'sinatra/base'
require './app/models/link'


class BookmarkManager < Sinatra::Base

  get '/' do
  end

  get '/links' do
    @links = Link.all
    erb :links
  end

  post '/links' do
    Link.create(title: params[:title], url: params[:url])
    redirect to('/links')
  end

  get '/links/new' do
    erb :new_link
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

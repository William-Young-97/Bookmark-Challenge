require 'sinatra/base'
require 'sinatra/reloader'
require './model/bookmark_logic'

class Bookmarks < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    @logic = Logic.all
    erb(:show_bookmarks)
  end

  run! if app_file == $0

end



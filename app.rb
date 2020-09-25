require 'sinatra/base'

class Battle < Sinatra::Base
  # set :sessions, true

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_one = params[:player_one]
    @player_two = params[:player_two]
    erb(:play)
  end
end

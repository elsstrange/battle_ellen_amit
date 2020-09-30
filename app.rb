require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get('/') do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:Player1]), Player.new(params[:Player2]))
    redirect '/play'
  end

  get '/play' do
    $game
    erb :play
  end

  get '/attack-player-2' do
    $game.attack_player_2
    erb :attack_player_2
  end

  get '/attack-player-1' do
    $game.attack_player_1
    erb :attack_player_1
  end

end

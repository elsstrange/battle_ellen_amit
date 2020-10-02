require 'sinatra/base'
require './lib/game'

class Battle < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secretysecret"
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(params[:player_one_name], params[:player_two_name])
    redirect '/play'
  end

  get '/play' do
    erb(:play, locals: { game: $game })
  end

  post '/attack' do
    $game.attack

    return redirect '/end-game' if $game.game_over?

    redirect '/attack'
  end

  get '/attack' do
    erb(:attack, locals: { game: $game })
  end

  post '/end-turn' do
    $game.turnover
    redirect '/play'
  end

  get '/end-game' do
    erb(:end_game, locals: { game: $game })
  end
end

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
    # session[:player_one_name] = params[:player_one_name]
    # session[:player_two_name] = params[:player_two_name]
    redirect '/play'
  end

  get '/play' do
    # @player_one_name = session[:player_one_name]
    # @player_two_name = session[:player_two_name]
    erb(:play, locals: { game: $game })
  end

  get '/attack' do
    # @player_two_name = session[:player_two_name]
    $game.attack
    erb(:attack, locals: { game: $game })
  end
end

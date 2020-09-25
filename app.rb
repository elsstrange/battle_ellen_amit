require 'sinatra/base'

class Battle < Sinatra::Base
  # set :sessions, true

  configure do
    enable :sessions
    # set :session_secret, "secret"
  end

  get '/' do
    @session = session
    erb(:index)
  end

  post '/names' do
    session[:player_one_name] = params[:player_one_name]
    session[:player_two_name] = params[:player_two_name]
    redirect '/play'
  end

  get '/play' do
    @player_one_name = session[:player_one_name]
    @player_two_name = session[:player_two_name]
    erb(:play)
  end
end

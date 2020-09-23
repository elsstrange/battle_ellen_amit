require 'sinatra/base'

class Battle < Sinatra::Base
  # set :sessions, true

  get '/' do
    'Hello Battle! Testing infrastructure working!'
  end
end

require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $player_1_name = Player.new(params[:player_1_name])
    $player_2_name = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1_name.name
    @player_2_name = $player_2_name.name
    erb(:play)
  end

  get '/attack' do
    @player_1_name = $player_1_name.name
    @player_2_name = $player_2_name.name
    erb :attack
  end

  run! if app_file == $0
end

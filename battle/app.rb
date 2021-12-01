require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  # our routes would go here
  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    
    # @player_1_name = params[:player_1_name]
    # @player_2_name = params[:player_2_name]
    redirect "/play"
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_2_hp = $player_2.hit_points
    
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_1.attack(@player_2)
    erb :attack
  end

 
  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
  
end
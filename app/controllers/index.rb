get '/' do
  erb :index
end

get '/results' do
  erb :results, :layout => false
end 

get '/play/:game_id' do
  erb :game
end 

post '/play' do
  player1 = Player.new(initials: params[:game][:player1])
  player2 = Player.new(initials: params[:game][:player2])
  game = Game.new(:player1_id => player1.id.to_i, :player2_id => player2.id.to_i)
  if game.save
    redirect '/play/' + game.id.to_s
    session[:game_id] = game.id
  else
    redirect '/'
  end 
end

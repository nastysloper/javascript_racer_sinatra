def current_game
  if session[:game_id]
    @current_game ||= Game.find(session[:game_id])
  end
end

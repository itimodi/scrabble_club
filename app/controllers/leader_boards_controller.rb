class LeaderBoardsController < ApplicationController
	def index
  	@players = Player.get_top_players.limit(10)
  end
end
module LeaderBoardsHelper

	def average_score(player)
		(player.participants.pluck(:score).sum / player.participants.pluck(:score).count).round
	end
end

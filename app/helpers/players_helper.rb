module PlayersHelper
	def average_score(player)
		player&.participants.count > 0 ? player&.participants.average(:score) : 0 
	end

	def highest_score(player)
		player&.participants.maximum('score') || 0
	end
end

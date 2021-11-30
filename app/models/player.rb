class Player < ApplicationRecord
	has_many :participants, dependent: :destroy

	validates_presence_of :email, :contact_number, :first_name, :last_name, :user_name

	def self.get_top_players
  	players_ids = joins(:participants).group('players.id').having("count(participants.id)>=2")
  	where(id: players_ids).includes(:participants).order("participants.score desc")
  end

  def full_name
  	first_name + " " + last_name
  end

  def wins
  	participants.where('participants.status' => :win)
  end

  def losses
  	participants.where('participants.status' => :loss)
  end

end

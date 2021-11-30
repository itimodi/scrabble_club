class Participant < ApplicationRecord
	belongs_to :player
	belongs_to :game

	enum status: [ :loss, :win, :tie ]

end

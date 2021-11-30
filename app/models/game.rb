class Game < ApplicationRecord
	has_many :participants, dependent: :destroy

	enum status: [ :active, :deactive ]

end

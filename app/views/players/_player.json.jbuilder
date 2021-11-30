json.extract! player, :id, :first_name, :last_name, :user_name, :email, :contact_number, :created_at, :updated_at
json.url player_url(player, format: :json)

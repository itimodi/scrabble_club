class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :email
      t.string :contact_number

      t.timestamps
    end
  end
end

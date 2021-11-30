class CreateParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :participants do |t|
      t.references :player, foreign_key: true
      t.references :game, foreign_key: true
      t.float :score
      t.integer :status, default: 0

      t.timestamps
    end
  end
end

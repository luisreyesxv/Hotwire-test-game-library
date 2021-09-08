class CreateUserGames < ActiveRecord::Migration[6.1]
  def change
    create_table :user_games do |t|
      t.references :user
      t.references :game
      t.boolean :favorite

      t.timestamps
    end
  end
end

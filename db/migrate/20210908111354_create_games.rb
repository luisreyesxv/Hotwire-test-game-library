class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :systems
      t.string :external_id
      t.string :artwork
      t.string :summary

      t.timestamps
    end
  end
end

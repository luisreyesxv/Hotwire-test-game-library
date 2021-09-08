class CreateFollowers < ActiveRecord::Migration[6.1]
  def change
    create_table :followers do |t|
      t.references :user
      t.references :followed_id, foreign_key: { to_table: 'users' }

      t.timestamps
    end
  end
end

class FixColumnNames < ActiveRecord::Migration[6.1]
  def change
    rename_column :followers, :followed_id_id, :followed_id
  end
end

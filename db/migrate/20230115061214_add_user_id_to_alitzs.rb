class AddUserIdToAlitzs < ActiveRecord::Migration[6.1]
  def change
    add_column :alitzs, :user_id, :integer
  end
end

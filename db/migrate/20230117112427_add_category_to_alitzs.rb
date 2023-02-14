class AddCategoryToAlitzs < ActiveRecord::Migration[6.1]
  def change
    add_column :alitzs, :category, :stringg
  end
end

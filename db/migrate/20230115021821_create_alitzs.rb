class CreateAlitzs < ActiveRecord::Migration[6.1]
  def change
    create_table :alitzs do |t|
      t.string :phrase
      t.string :translation
      t.string :read

      t.timestamps
    end
  end
end

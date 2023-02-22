class CreateTag2s < ActiveRecord::Migration[6.1]
  def change
    create_table :tag2s do |t|
      t.string :name

      t.timestamps
    end
  end
end

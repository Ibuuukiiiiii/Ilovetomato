class CreateAlitzTag2Relations < ActiveRecord::Migration[6.1]
  def change
    create_table :alitz_tag2_relations do |t|
      t.references :alitz, null: false, foreign_key: true
      t.references :tag2, null: false, foreign_key: true

      t.timestamps
    end
  end
end

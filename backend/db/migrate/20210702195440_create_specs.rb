class CreateSpecs < ActiveRecord::Migration[6.1]
  def change
    create_table :specs do |t|
      t.belongs_to :player_class, null: false, foreign_key: true
      t.integer :spec_id
      t.string :name

      t.timestamps
    end
  end
end

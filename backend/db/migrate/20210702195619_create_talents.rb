class CreateTalents < ActiveRecord::Migration[6.1]
  def change
    create_table :talents do |t|
      t.belongs_to :spec, null: false, foreign_key: true
      t.integer :talent_id
      t.string :icon
      t.string :name
      t.integer :points
      t.string :dependency
      t.integer :tier

      t.timestamps
    end
  end
end

class CreateRanks < ActiveRecord::Migration[6.1]
  def change
    create_table :ranks do |t|
      t.belongs_to :talent, null: false, foreign_key: true
      t.integer :rank_id
      t.string :description

      t.timestamps
    end
  end
end

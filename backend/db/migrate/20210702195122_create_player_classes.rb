class CreatePlayerClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :player_classes do |t|
      t.integer :player_class_id
      t.string :name

      t.timestamps
    end
  end
end

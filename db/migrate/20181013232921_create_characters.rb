class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :move_speed
      t.integer :jump_power
      t.integer :attack_power

      t.belongs_to :user

      t.timestamps
    end
  end
end

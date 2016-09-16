class CreateParticipations < ActiveRecord::Migration[5.1]
  def change
    create_table :participations do |t|
      t.integer :guest_id
      t.integer :evening_id
      t.string :type

      t.timestamps
    end
  end
end

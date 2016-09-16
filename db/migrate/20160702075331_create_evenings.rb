class CreateEvenings < ActiveRecord::Migration[5.1]
  def change
    create_table :evenings do |t|
      t.string :address
      t.integer :city_id
      t.integer :max_guests
      t.boolean :needs_survivor
      t.text :private_free_text
      t.text :public_free_text
      t.boolean :open
      t.date :date
      t.time :time
      t.string :organization_name
      t.boolean :visible
      t.integer :floor
      t.boolean :elevator
      t.integer :language_id
      t.integer :witness_id
      t.datetime :witness_assigned_at

      t.timestamps
    end
  end
end

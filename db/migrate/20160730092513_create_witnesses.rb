class CreateWitnesses < ActiveRecord::Migration[5.1]
  def change
    create_table :witnesses do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.integer :city_id
      t.string :witness_type
      t.integer :language_id
      t.string :email
      t.string :phone
      t.string :can_climb_stairs
      t.text :special_needs
      t.boolean :requires_seminar
      t.integer :concept_id
      t.text :free_text
      t.boolean :is_of_special_population

      t.timestamps
    end
  end
end

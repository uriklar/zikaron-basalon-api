class CreateConcepts < ActiveRecord::Migration[5.1]
  def change
    create_table :concepts do |t|
      t.string :name
      t.integer :manager_id

      t.timestamps
    end
  end
end

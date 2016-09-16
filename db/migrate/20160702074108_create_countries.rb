class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :iso
      t.string :name
      t.string :printable_name
      t.string :iso_3
      t.string :numcode
      t.integer :manager_id

      t.timestamps
    end
  end
end

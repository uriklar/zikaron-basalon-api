class CreateLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :languages do |t|
      t.string :name
      t.string :display_name

      t.timestamps
    end
  end
end

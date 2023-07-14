class CreateNominees < ActiveRecord::Migration[7.0]
  def change
    create_table :nominees do |t|
      t.string :name
      t.integer :votes

      t.timestamps
    end
  end
end

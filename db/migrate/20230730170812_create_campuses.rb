class CreateCampuses < ActiveRecord::Migration[7.0]
  def change
    create_table :campuses do |t|
      t.string :name
      t.string :location
      t.string :type_campus

      t.timestamps
    end
  end
end

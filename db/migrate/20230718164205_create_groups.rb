class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :admin
      t.string :student_voter
      t.string :delegate
      t.string :candidate

      t.timestamps
    end
  end
end

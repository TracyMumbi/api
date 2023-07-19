class CreateCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.string :reg_no
      t.string :student_name
      t.string :student_email
      t.integer :voting_phone_number
      t.string :department

      t.timestamps
    end
  end
end

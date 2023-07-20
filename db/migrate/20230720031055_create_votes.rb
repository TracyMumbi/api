class CreateVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :votes do |t|
      t.string :VVPAT_ref
      t.string :condidate_selected
      t.string :actual_vote_count

      t.timestamps
    end
  end
end

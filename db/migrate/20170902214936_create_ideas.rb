class CreateIdeas < ActiveRecord::Migration[5.1]
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :description
      t.integer :up_vote
      t.integer :down_vote

      t.timestamps
    end
  end
end

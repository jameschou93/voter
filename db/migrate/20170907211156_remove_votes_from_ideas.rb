class RemoveVotesFromIdeas < ActiveRecord::Migration[5.1]
  def change
    remove_column :ideas, :up_vote, :integer, :default => 0
    remove_column :ideas, :down_vote, :integer, :default => 0
  end
end

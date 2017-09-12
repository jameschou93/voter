class AddUserToIdea < ActiveRecord::Migration[5.1]
  def change
    add_column :ideas, :user_id, :integer
    change_column :ideas, :up_vote, :integer, :default => 0
    change_column :ideas, :down_vote, :integer, :default => 0
  end
end

class AddCachedVotesUpToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :cached_votes_up, :integer, :default => 0
  end
end

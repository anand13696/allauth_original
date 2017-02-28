class AddCachedVotesUpToForums < ActiveRecord::Migration[5.0]
  def change
    add_column :forums, :cached_votes_up, :integer
  end
end

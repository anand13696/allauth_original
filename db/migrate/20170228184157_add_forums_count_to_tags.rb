class AddForumsCountToTags < ActiveRecord::Migration[5.0]
  def change
    add_column :tags, :forums_count, :integer, :null => false, :default => 0
  end
end

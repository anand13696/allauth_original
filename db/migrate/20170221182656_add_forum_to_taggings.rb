class AddForumToTaggings < ActiveRecord::Migration[5.0]
  def change
    add_reference :taggings, :forum, foreign_key: true
  end
end

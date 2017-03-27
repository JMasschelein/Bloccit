class AddTopicToPaidPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :paid_posts, :topic_id, :integer
    add_index :paid_posts, :topic_id
  end
end

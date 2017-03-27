class CreatePaidPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :paid_posts do |t|
      t.string :title
      t.text :body
      t.integer :price
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end

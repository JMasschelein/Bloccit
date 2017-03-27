class CreatePostSponsoreds < ActiveRecord::Migration[5.0]
  def change
    create_table :post_sponsoreds do |t|
      t.string :title
      t.text :body
      t.integer :price
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end

class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.text :content
      t.string :title
      t.string :description
      t.string :slug
      t.integer :views_count, default: 0, null: false

      t.timestamps null: false
    end
  end
end

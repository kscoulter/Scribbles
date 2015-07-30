class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.string :title
      t.string :image_url
      t.datetime :datetime
      t.string :content
    end
  end
end

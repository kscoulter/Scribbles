class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user_name
      t.string :datetime
      t.string :comment
      t.string :like
    end
  end
end

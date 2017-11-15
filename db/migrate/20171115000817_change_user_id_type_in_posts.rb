class ChangeUserIdTypeInPosts < ActiveRecord::Migration[5.1]
  def change
  	change_column :posts, :user_id, :int
  	change_column :comments, :user_id, :int
  	change_column :comments, :post_id, :int
  end
end

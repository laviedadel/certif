class AddDetailsToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :title, :string
    add_column :posts, :content, :text
    add_column :posts, :url, :string
    add_column :posts, :user_id, :bigint
    add_index :posts, :user_id

  end
end

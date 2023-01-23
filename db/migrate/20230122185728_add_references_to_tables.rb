class AddReferencesToTables < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :user_id, :string
    remove_column :comments, :user_id, :string
    remove_column :comments, :post_id, :string

    add_reference :comments, :user, null: false, foreign_key: true
    add_reference :comments, :post, null: false, foreign_key: true

  end
end

class DeleteIndexesFromLikes < ActiveRecord::Migration[7.0]
  def change

    remove_index :likes, name: "index_likes_on_likeable_id_and_likable_type"
    remove_index :likes, name: "index_likes_on_user_id_and_likeable_id_and_likeables_type"
  end
end

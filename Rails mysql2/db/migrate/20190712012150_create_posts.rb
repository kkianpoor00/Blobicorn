class CreatePosts < ActiveRecord::Migration[5.2]
  def up
    create_table :posts do |t|
      t.integer "ef_user_id"
      t.string "title"
      t.string "category"
      t.string "kindOfPost", :limit => 50
      t.text "details"
      t.timestamps
    end
    add_index("posts","ef_user_id")
  end

  def down
    drop_table :posts
  end
end

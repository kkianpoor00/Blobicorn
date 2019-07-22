class CreatePosts < ActiveRecord::Migration[5.2]
  def up
    create_table :posts do |t|
      t.integer "user_id"
      t.string "title"
      t.string "category"
      t.string "type", :limit => 50
      t.text "details"
      t.timestamps
    end
    add_index("posts","user_id")
  end

  def down
    drop_table :posts
  end
end

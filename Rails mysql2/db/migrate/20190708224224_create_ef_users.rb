class CreateEfUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :ef_users do |t|

      t.integer "post_id"
      t.column "first_name", :string, :limit => 50
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 50

      t.timestamps
      # t.datetime "created_at"
      # t.datetime "updated_at"
    end
    add_index("ef_users", "post_id")

  end

  def down
    drop_table :ef_users
  end
end

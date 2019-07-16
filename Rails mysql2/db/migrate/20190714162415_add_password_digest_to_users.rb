class AddPasswordDigestToUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column "ef_users", "password"
    add_column "ef_users", "password_digest", :string
  end

  def down
    remove_column "ef_users", "password_digest"
    add_column "ef_users", "password", :string, :limit => 40
  end
end

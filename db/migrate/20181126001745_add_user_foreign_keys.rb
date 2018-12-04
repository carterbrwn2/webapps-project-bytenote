class AddUserForeignKeys < ActiveRecord::Migration[5.1]
  def change
    add_column :notebooks, :user_id, :integer
    add_index :notebooks, :user_id
  end
end

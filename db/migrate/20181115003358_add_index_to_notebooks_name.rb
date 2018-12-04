class AddIndexToNotebooksName < ActiveRecord::Migration[5.1]
  def change
    add_index :notebooks, :name, unique: true
  end
end

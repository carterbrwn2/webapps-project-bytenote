class AddNotebookForeignKeys < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :notebook_id, :integer
    add_index :notes, :notebook_id
  end
end

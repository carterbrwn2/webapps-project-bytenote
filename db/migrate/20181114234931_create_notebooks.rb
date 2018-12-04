class CreateNotebooks < ActiveRecord::Migration[5.1]
  def change
    create_table :notebooks do |t|
      t.string :name

      t.timestamps
    end
  end
end

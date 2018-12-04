#Author: Will Greenway

class CreateThemes < ActiveRecord::Migration[5.1]
  def change
    create_table :themes do |t|
      t.text :stylesheet, :default => 'default_theme.css'

      t.timestamps
    end
  end
end

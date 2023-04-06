class AddBookCountToAuthor < ActiveRecord::Migration[7.0]
  def change
    change_table :authors do |t|
      t.integer :count, null: false, default: 0
    end
  end
end

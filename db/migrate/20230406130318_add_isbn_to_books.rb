class AddIsbnToBooks < ActiveRecord::Migration[7.0]
  def change
    change_table :books do |t|
      t.string :isbn
    end

    Book.all.update_all(isbn: "4355768574537")
    change_column_null :books, :isbn, false
  end
end

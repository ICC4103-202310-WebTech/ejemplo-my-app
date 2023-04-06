class AddReferenceToAuthorInBook < ActiveRecord::Migration[7.0]
  def change
    change_table :books do |t|
      t.references :author
    end
  end
end

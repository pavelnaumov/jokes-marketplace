class AddCategoryToJoke < ActiveRecord::Migration[5.2]
  def change
    add_column :jokes, :category, :string
  end
end

class AddFavoriteToBoughtJokes < ActiveRecord::Migration[5.2]
  def change
    add_column :bought_jokes, :favorite, :boolean
  end
end

class CreateBoughtJokes < ActiveRecord::Migration[5.2]
  def change
    create_table :bought_jokes do |t|
      t.references :user, foreign_key: true
      t.references :joke, foreign_key: true

      t.timestamps
    end
  end
end

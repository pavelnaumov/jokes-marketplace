class CreateJokes < ActiveRecord::Migration[5.2]
  def change
    create_table :jokes do |t|
      t.string :title
      t.text :description
      t.integer :rating
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

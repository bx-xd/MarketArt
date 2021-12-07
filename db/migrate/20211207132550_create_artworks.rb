class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end

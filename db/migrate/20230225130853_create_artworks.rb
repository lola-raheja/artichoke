class CreateArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.integer :price
      t.string :medium
      t.date :year
      t.string :material
      t.string :height
      t.string :width
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

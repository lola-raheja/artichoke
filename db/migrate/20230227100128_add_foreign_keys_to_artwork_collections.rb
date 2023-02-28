class AddForeignKeysToArtworkCollections < ActiveRecord::Migration[7.0]
  def change
    add_reference :artwork_collections, :artwork, null: false, foreign_key: true
    add_reference :artwork_collections, :collection, null: false, foreign_key: true
  end
end

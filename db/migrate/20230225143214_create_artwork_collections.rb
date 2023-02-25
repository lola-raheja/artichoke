class CreateArtworkCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :artwork_collections do |t|

      t.timestamps
    end
  end
end

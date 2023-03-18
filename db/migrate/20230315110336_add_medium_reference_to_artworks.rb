class AddMediumReferenceToArtworks < ActiveRecord::Migration[7.0]
  def change
    add_reference :artworks, :medium, foreign_key: true
  end
end

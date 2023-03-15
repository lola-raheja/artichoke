class RemoveMediumFromArtworks < ActiveRecord::Migration[7.0]
  def change
    remove_column :artworks, :medium, :string
  end
end

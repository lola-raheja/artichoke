class AddEndTimeToArtwork < ActiveRecord::Migration[7.0]
  def change
    add_column :artworks, :end_time, :datetime
  end
end

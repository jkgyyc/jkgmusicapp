class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :artist_name
      t.integer :length

      t.timestamps
    end
  end
end

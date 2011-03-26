class CreateAlbums < ActiveRecord::Migration
  def self.up
    create_table :albums do |t|
      t.string :titulo
      t.text :descricao
      t.date :data
      t.string :tipo

      t.timestamps
    end
  end

  def self.down
    drop_table :albums
  end
end

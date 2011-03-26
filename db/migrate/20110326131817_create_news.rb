class CreateNews < ActiveRecord::Migration
  def self.up
    create_table :news do |t|
      t.text :texto
      t.date :data

      t.timestamps
    end
  end

  def self.down
    drop_table :news
  end
end

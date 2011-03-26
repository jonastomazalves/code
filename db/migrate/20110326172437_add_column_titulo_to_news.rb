class AddColumnTituloToNews < ActiveRecord::Migration
  def self.up
    add_column :news, :titulo, :string
  end

  def self.down
    remove_column :news, :titulo
  end
end

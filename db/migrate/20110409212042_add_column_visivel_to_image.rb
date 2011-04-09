class AddColumnVisivelToImage < ActiveRecord::Migration
  def self.up
    add_column :images, :visivel, :boolean
  end

  def self.down
    remove_column :images, :visivel
  end
end

class Album < ActiveRecord::Base
  validates_presence_of :titulo, :descricao, :tipo, :message => "não pode estar em branco"
  
  has_many :images, :dependent => :destroy
  
  # Selects the last updated image on the current album
  def self.find_last_image id
    Image.find_all_by_album_id(id, :order => 'updated_at DESC', :limit => 1).first
  end
end

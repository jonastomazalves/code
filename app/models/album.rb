class Album < ActiveRecord::Base
  validates_presence_of :titulo, :descricao, :tipo, :message => "não pode estar em branco"
  
  has_many :images, :dependent => :destroy
  
  # Selects the last updated image on the current album
  def self.find_one_image(id)
    Image.find_by_album_id(id).photo.url(:small)
  end
end

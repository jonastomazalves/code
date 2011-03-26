class Album < ActiveRecord::Base
  validates_presence_of :titulo, :descricao, :tipo, :message => "não pode estar em branco"
  
  has_many :images
end

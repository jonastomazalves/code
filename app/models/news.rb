class News < ActiveRecord::Base
  validates_presence_of :texto, :message => "não pode estar em branco"
end

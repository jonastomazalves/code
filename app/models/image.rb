class Image < ActiveRecord::Base
  validates_presence_of :title, :album, :message => "não pode estar em branco"
  
  validates_attachment_presence :photo, :message => "não pode estar em branco"
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/bmp']
  
  has_attached_file :photo
  
  belongs_to :album
end

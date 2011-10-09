# encoding: utf-8

class Image < ActiveRecord::Base
  validates_presence_of :title, :album, :message => "não pode estar em branco"
  
  validates_attachment_presence :photo, :message => "não pode estar em branco"
  validates_attachment_size :photo, :less_than => 10.megabytes, :message => "não pode ter mais de 10MB"
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/bmp']
  
  has_attached_file :photo, :styles => { 
  										:small => {  :geometry => "120x120>", :format => 'JPG'},
  										:medium => { :geometry => "960x480#", :format => 'JPG'}
  										},
  										 			  
  							:convert_options => { :small => '-quality 50', :medium => '-quality 60' }
  
  belongs_to :album
end

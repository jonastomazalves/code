# encoding: utf-8

class News < ActiveRecord::Base
  validates_presence_of :titulo, :texto, :message => "não pode estar em branco"
end

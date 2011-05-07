class User < ActiveRecord::Base
  validates_presence_of :password, :message => " não pode estar em branco."
  
  acts_as_authentic
end

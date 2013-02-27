class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :salt, :userlevel
end

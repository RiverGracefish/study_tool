class User < ActiveRecord::Base
  has_secure_password
  validates :email, uniqueness:true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }
  validates :first_name, presence:true
end

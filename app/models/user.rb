class User < ActiveRecord::Base
  has_secure_password(validations:false)
  validates :email, uniqueness:true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }
  validates :first_name, presence:true

  has_many :user_paths, dependent: :destroy
  has_many :user_questions, through: :user_paths
end

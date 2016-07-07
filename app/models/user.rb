class User < ActiveRecord::Base
  validates_presence_of :username
  validates_uniqueness_of :username
  has_secure_password
  has_many :completed_builds
end

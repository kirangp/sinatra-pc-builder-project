class CompletedBuild < ActiveRecord::Base
  has_many :systems
  belongs_to :user
end

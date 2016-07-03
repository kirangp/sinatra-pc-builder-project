class PcBuild < ActiveRecord::Base
  has_many :individual_builds
  belongs_to :user
end

class System < ActiveRecord::Base
  belongs_to :completed_build
  validates_presence_of :cpu, :motherboard, :memory, :storage, :videocard, :powersupply, :case
end

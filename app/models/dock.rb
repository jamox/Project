class Dock < ActiveRecord::Base
  attr_accessible :length, :name
  has_many :berths
end

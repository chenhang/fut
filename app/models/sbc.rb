class Sbc < ActiveRecord::Base
  serialize :data, JSON
  has_many :challenges
  validates_presence_of :url
  validates_uniqueness_of :url
end

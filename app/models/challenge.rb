class Challenge < ActiveRecord::Base
  serialize :data, JSON
  belongs_to :sbc
  has_many :squads
  validates_presence_of :url
  validates_uniqueness_of :url
end

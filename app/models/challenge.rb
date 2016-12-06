class Challenge < ActiveRecord::Base
  serialize :data, JSON
  serialize :squads, JSON
  belongs_to :sbc
  validates_presence_of :url
  validates_uniqueness_of :url
end

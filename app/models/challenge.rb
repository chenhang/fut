class Challenge < ActiveRecord::Base
  serialize :data, JSON
  serialize :squads, JSON
  validates_presence_of :url
  validates_uniqueness_of :url
end

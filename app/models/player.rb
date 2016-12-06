class Player < ActiveRecord::Base
  serialize :data, JSON
  validates_presence_of :url
  validates_uniqueness_of :url
end

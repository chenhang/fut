class Squad < ActiveRecord::Base
  serialize :original_data, JSON
  serialize :players, JSON
  serialize :info, JSON
  belongs_to :sbc
  belongs_to :challenge
  validates_presence_of :url
  validates_uniqueness_of :url
end

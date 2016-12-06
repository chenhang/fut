class Squad < ActiveRecord::Base
  serialize :original_data, JSON
  serialize :player_data, JSON
  serialize :position_info, JSON
  belongs_to :sbc
  belongs_to :challenge
  validates_presence_of :url
  validates_uniqueness_of :url
end

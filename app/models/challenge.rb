class Challenge < ActiveRecord::Base
  serialize :data, JSON
  serialize :requirement, JSON
  belongs_to :sbc
  has_many :squads
  validates_presence_of :url
  validates_uniqueness_of :url

  def cheapest_squad
    squads.sort_by { |s| s.total_prize }.first
  end

  def cheapest_prize
    cheapest_squad.total_prize
  end
end

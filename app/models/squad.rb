class Squad < ActiveRecord::Base
  serialize :original_data, JSON
  serialize :player_data, JSON
  serialize :position_info, JSON
  belongs_to :sbc
  belongs_to :challenge
  validates_presence_of :url
  validates_uniqueness_of :url

  def total_prize
    @total_prize ||= player_data.to_a.sum do |d|
      prize = d['prize'].to_i
      prize.zero? ? 10000 : prize
    end
  end

  def prizes
    @prizes ||= player_data.to_a.map do |d|
      [d['name'], d['position'], d['prize'].to_i]
    end
  end

  def loyalty_needed?
    original_data.to_a.find {|d| d['loyalty'] }.present?
  end
end

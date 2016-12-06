class Sbc < ActiveRecord::Base
    serialize :data, JSON
    serialize :squads, JSON
end

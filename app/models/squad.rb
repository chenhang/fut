class Squad < ActiveRecord::Base
    serialize :original_data, JSON
    serialize :players, JSON
    serialize :info, JSON
    belongs_to :sbc
end

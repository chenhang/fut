class Player < ActiveRecord::Base
    serialize :data, JSON
end

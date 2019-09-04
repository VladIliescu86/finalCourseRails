class Team < ApplicationRecord
  has_one :manager
  has_many :players
end

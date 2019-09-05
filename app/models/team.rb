class Team < ApplicationRecord
  has_one :team_manager
  accepts_nested_attributes_for :team_manager
  has_many :players
  accepts_nested_attributes_for :players
end

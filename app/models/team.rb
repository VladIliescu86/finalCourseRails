class Team < ApplicationRecord
  has_one :manager
  accepts_nested_attributes_for :manager
  has_many :players
  accepts_nested_attributes_for :players
end

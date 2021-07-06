class Build < ApplicationRecord
  belongs_to :user
  has_one :player_class
  has_many :specs, through: :player_class
  has_many :talents, through: :specs
  has_many :ranks, through: :talents
end

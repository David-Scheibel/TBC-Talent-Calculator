class Spec < ApplicationRecord
  belongs_to :player_class
  has_many :talents
  has_many :ranks, through: :talents
end

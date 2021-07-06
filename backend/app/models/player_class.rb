class PlayerClass < ApplicationRecord
    belongs_to :builds
    has_many :specs
    has_many :talents, through: :specs
    has_many :ranks, through: :talents
end

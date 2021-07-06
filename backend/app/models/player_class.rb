class PlayerClass < ApplicationRecord
    has_many :specs
    has_many :talents, through: :specs
end

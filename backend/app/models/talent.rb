class Talent < ApplicationRecord
  belongs_to :spec
  has_many: ranks
end

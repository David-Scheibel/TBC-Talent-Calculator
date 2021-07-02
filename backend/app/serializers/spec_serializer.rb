class SpecSerializer < ActiveModel::Serializer
  attributes :id, :spec_id, :name
  has_one :player_class
end

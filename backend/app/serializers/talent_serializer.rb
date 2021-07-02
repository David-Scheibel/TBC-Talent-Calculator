class TalentSerializer < ActiveModel::Serializer
  attributes :id, :talent_id, :icon, :name, :points, :dependency, :tier
  has_one :spec
end

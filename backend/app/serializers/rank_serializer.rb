class RankSerializer < ActiveModel::Serializer
  attributes :id, :rank_id, :description
  has_one :talent
end

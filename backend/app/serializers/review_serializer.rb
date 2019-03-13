class ReviewSerializer < ActiveModel::Serializer

  attributes :id, :price, :quality, :service, :average_score

end

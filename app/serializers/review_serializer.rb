class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment

  belongs_to :user
  belongs_to :car
end

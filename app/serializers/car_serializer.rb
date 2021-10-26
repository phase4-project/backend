class CarSerializer < ActiveModel::Serializer
  attributes :id, :make, :model, :engine, :horsepower, :time, :price, :image

  has_many :reviews, serializer: ReviewSerializer
end

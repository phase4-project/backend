class WishlistSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user, serializer: UserSerializer
  has_one :car
end

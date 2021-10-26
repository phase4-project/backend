class Admin < ApplicationRecord
    has_many :cars
    has_many :reviews, through: :cars
end

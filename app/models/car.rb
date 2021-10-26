class Car < ApplicationRecord
    has_many :reviews

    belongs_to :users
end

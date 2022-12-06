class Book < ApplicationRecord
    belongs_to :user
    has many :reviews
end

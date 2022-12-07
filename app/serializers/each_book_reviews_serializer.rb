class EachBookReviewsSerializer < ActiveModel::Serializer
 attributes :id, :rating, :comment

 has_many :books
end

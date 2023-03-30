class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment
  belongs_to :book
  belongs_to :user
end

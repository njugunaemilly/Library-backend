class BookSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :cover
  has_many :reviews
  belongs_to :author
end

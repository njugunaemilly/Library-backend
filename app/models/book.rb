class Book < ApplicationRecord
  belongs_to :author
  has_many :reviews
  has_many :users, through: :reviews
end

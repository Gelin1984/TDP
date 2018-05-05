class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :rating, presence: true
  validates :body, presence: true

 scope :rating_asc, ->  { order(rating: :asc) }
 scope :rating_desc, -> { order(rating: :desc) }
end


class Product < ApplicationRecord

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  has_many :order  
  has_many :comments

  def self.search(search_term)
    if Rails.env.production?
    else
      Product.where("name LIKE ?", "%#{search_term}%")
    end
  end

  def average_rating
    comments.average(:rating).to_f
  end

  def highest_rating_comment
    comments.rating_desc.first
  end

  def lowest_rating_comment
    comments.rating_asc.first
  end

end
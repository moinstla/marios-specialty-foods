class Product < ActiveRecord::Base
  has_many :reviews

  scope :most_reviews, -> {(
    select("products.name, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(3)
    )}

  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country, :presence => true
end

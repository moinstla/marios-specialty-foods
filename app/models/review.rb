class Review < ActiveRecord::Base
  belongs_to :product
  validates :author, :presence => true
  validates :content, {:presence => true, length: { in: 5..25 }}
  validates :rating, :presence => true
end

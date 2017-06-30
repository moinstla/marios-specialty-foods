class Review < ActiveRecord::Base
  belongs_to :product
  validates :author, :presence => true
  validates :content, {:presence => true, length: { in: 5..25 }}
  validates :rating, {:presence => true, inclusion: { in: 1..5, message: "rating must be between 1 and 5 "}}
end

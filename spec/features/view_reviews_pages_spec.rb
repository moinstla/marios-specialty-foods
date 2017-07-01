require 'rails_helper'

describe 'visit product path, route to review details' do
  it 'navigates from product path to review details' do
    product1 = Product.create(:name => 'Peaches', :cost => 5, :country =>'USA')
    review = product1.reviews.create(:author => 'Frank', :content => 'delicious', :rating => 5)
    visit products_path
    first(:link, 'Peaches').click
    expect(page).to have_content review.author
  end
end

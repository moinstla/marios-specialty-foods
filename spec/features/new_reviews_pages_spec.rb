require 'rails_helper'

describe 'visit root route to product path, add review' do
  it 'navigates from root to product path' do
    product = Product.create(:name => 'Peaches', :cost => 5, :country =>'USA')
    visit products_path
    first(:link, 'Peaches').click
    click_link 'Add a review'
    fill_in 'Author', :with => "Frank"
    fill_in 'Content', :with => "Delicious"
    fill_in 'Rating', :with => 5
    click_on 'Create Review'
    expect(page).to have_content 'Delicious'
  end
end

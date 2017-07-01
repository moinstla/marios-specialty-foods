require 'rails_helper'

describe 'visit root route to product path' do
  it 'navigates from root to product path' do
    product1 = Product.create(:name => 'Peaches', :cost => 5, :country =>"USA")
    visit products_path
    first(:link, 'Peaches').click
    expect(page).to have_content 'Peaches'
  end
end

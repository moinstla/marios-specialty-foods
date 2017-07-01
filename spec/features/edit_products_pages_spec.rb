require 'rails_helper'

describe 'visiting the product edit page, editing a product' do
  it 'navigates to the product edit page' do
    product = Product.create(:name => 'Peaches', :cost => 5, :country =>'USA')
    visit products_path(product)
    first(:link, 'Peaches').click
    click_link 'Edit'
    fill_in 'Name', :with => 'White Peaches'
    click_on 'Update Product'
    expect(page).to have_content product.name
  end
end

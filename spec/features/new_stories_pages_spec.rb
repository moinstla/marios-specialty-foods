require 'rails_helper'

describe 'visiting the new product page, adding a product' do
  it 'navigates to the new product page' do
    visit products_path
    click_link 'New Product'
    fill_in 'Name', :with => 'Peaches'
    fill_in 'Cost', :with => '5'
    fill_in 'Country', :with => 'USA'
    click_on 'Create Product'
    expect(page).to have_content 'Peaches'
  end
end

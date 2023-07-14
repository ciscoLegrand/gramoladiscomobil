require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      category: nil,
      name: "Name",
      pvp: 2.5,
      price: 3,
      price_no_vat: 4,
      stock: 5,
      meta_tags: "",
      tax: 6.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(//)
    expect(rendered).to match(/6.5/)
  end
end

require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        category: nil,
        name: "Name",
        pvp: 2.5,
        price: 3,
        price_no_vat: 4,
        stock: 5,
        meta_tags: "",
        tax: 6.5
      ),
      Product.create!(
        category: nil,
        name: "Name",
        pvp: 2.5,
        price: 3,
        price_no_vat: 4,
        stock: 5,
        meta_tags: "",
        tax: 6.5
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: 6.5.to_s, count: 2
  end
end

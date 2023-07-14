require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      category: nil,
      name: "MyString",
      pvp: 1.5,
      price: 1,
      price_no_vat: 1,
      stock: 1,
      meta_tags: "",
      tax: 1.5
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[category_id]"

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[pvp]"

      assert_select "input[name=?]", "product[price]"

      assert_select "input[name=?]", "product[price_no_vat]"

      assert_select "input[name=?]", "product[stock]"

      assert_select "input[name=?]", "product[meta_tags]"

      assert_select "input[name=?]", "product[tax]"
    end
  end
end

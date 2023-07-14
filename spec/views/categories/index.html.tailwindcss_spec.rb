require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        name: "Name",
        parent_id: "",
        level: 2,
        icon: "Icon"
      ),
      Category.create!(
        name: "Name",
        parent_id: "",
        level: 2,
        icon: "Icon"
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Icon".to_s, count: 2
  end
end

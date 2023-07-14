require 'rails_helper'

RSpec.describe "categories/edit", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      name: "MyString",
      parent_id: "",
      level: 1,
      icon: "MyString"
    ))
  end

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "input[name=?]", "category[name]"

      assert_select "input[name=?]", "category[parent_id]"

      assert_select "input[name=?]", "category[level]"

      assert_select "input[name=?]", "category[icon]"
    end
  end
end

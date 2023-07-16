require 'rails_helper'

RSpec.describe "admin/albums/new", type: :view do
  before(:each) do
    assign(:album, Admin::Album.new(
      title: "MyString",
      password: "MyString",
      code: "MyString",
      counter: 1,
      emails: "",
      status: "MyString"
    ))
  end

  it "renders new album form" do
    render

    assert_select "form[action=?][method=?]", albums_path, "post" do

      assert_select "input[name=?]", "album[title]"

      assert_select "input[name=?]", "album[password]"

      assert_select "input[name=?]", "album[code]"

      assert_select "input[name=?]", "album[counter]"

      assert_select "input[name=?]", "album[emails]"

      assert_select "input[name=?]", "album[status]"
    end
  end
end

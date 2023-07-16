require 'rails_helper'

RSpec.describe "admin/albums/edit", type: :view do
  before(:each) do
    @album = assign(:album, Admin::Album.create!(
      title: "MyString",
      password: "MyString",
      code: "MyString",
      counter: 1,
      emails: "",
      status: "MyString"
    ))
  end

  it "renders the edit album form" do
    render

    assert_select "form[action=?][method=?]", album_path(@album), "post" do

      assert_select "input[name=?]", "album[title]"

      assert_select "input[name=?]", "album[password]"

      assert_select "input[name=?]", "album[code]"

      assert_select "input[name=?]", "album[counter]"

      assert_select "input[name=?]", "album[emails]"

      assert_select "input[name=?]", "album[status]"
    end
  end
end

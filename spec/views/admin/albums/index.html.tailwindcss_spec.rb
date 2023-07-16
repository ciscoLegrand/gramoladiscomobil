require 'rails_helper'

RSpec.describe "admin/albums/index", type: :view do
  before(:each) do
    assign(:albums, [
      Admin::Album.create!(
        title: "Title",
        password: "Password",
        code: "Code",
        counter: 2,
        emails: "",
        status: "Status"
      ),
      Admin::Album.create!(
        title: "Title",
        password: "Password",
        code: "Code",
        counter: 2,
        emails: "",
        status: "Status"
      )
    ])
  end

  it "renders a list of admin/albums" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Password".to_s, count: 2
    assert_select "tr>td", text: "Code".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
  end
end

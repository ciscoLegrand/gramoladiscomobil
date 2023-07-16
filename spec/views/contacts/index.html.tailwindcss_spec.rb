require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        name: "Name",
        phone: 2,
        email: "Email",
        title: "Title",
        data: ""
      ),
      Contact.create!(
        name: "Name",
        phone: 2,
        email: "Email",
        title: "Title",
        data: ""
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end

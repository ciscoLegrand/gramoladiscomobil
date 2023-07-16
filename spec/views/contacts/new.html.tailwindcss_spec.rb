require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      name: "MyString",
      phone: 1,
      email: "MyString",
      title: "MyString",
      data: ""
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input[name=?]", "contact[name]"

      assert_select "input[name=?]", "contact[phone]"

      assert_select "input[name=?]", "contact[email]"

      assert_select "input[name=?]", "contact[title]"

      assert_select "input[name=?]", "contact[data]"
    end
  end
end

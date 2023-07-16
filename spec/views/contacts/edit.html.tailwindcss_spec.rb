require 'rails_helper'

RSpec.describe "contacts/edit", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      name: "MyString",
      phone: 1,
      email: "MyString",
      title: "MyString",
      data: ""
    ))
  end

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do

      assert_select "input[name=?]", "contact[name]"

      assert_select "input[name=?]", "contact[phone]"

      assert_select "input[name=?]", "contact[email]"

      assert_select "input[name=?]", "contact[title]"

      assert_select "input[name=?]", "contact[data]"
    end
  end
end

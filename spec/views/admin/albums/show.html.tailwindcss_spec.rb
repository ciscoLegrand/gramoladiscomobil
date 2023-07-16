require 'rails_helper'

RSpec.describe "admin/albums/show", type: :view do
  before(:each) do
    @album = assign(:album, Admin::Album.create!(
      title: "Title",
      password: "Password",
      code: "Code",
      counter: 2,
      emails: "",
      status: "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Status/)
  end
end

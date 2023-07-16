FactoryBot.define do
  factory :album, class: 'Admin::Album' do
    title { "MyString" }
    password { "MyString" }
    code { "MyString" }
    counter { 1 }
    emails { "" }
    published_at { "2023-07-16" }
    status { "MyString" }
  end
end

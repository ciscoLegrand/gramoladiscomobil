FactoryBot.define do
  factory :product do
    category { nil }
    name { "MyString" }
    pvp { 1.5 }
    price { 1 }
    price_no_vat { 1 }
    stock { 1 }
    meta_tags { "" }
    tax { 1.5 }
  end
end

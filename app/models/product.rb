class Product < ApplicationRecord
  include FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :category
  has_rich_text :description

  has_many_attached :images
end

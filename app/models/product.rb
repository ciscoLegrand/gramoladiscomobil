class Product < ApplicationRecord
  include FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :category
  has_rich_text :description

  has_many :prices, as: :priciable, dependent: :destroy

  has_many_attached :images do |attachable|
    attachable.variant :mobile, resize_to_limit: [480, 800]
    attachable.variant :tablet, resize_to_limit: [800, 1280]
    attachable.variant :desktop, resize_to_limit: [1280, 1024]
    attachable.variant :widescreen, resize_to_limit: [1920, 1080]
  end

  def amount
    prices.first.amount_in_cents / 100.00
  end

  def w_vat
    prices.first.amount_w_vat / 100.00
  end

  private


end

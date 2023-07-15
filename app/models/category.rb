class Category < ApplicationRecord
  extend FriendlyId

  friendly_id :name, use: :slugged

  has_many :subcategories, class_name: "Category", foreign_key: "parent_id", dependent: :destroy
  belongs_to :parent, class_name: "Category", optional: true
  has_many :products, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :parent, presence: true, if: -> { parent_id.present? }

  before_validation :set_default_level, :normalize_name, on: %i[create update]

  def parent_name
    parent&.name
  end

  private

  def set_default_level
    self.level ||= parent.present? ? parent.level.next : 0
  end

  def normalize_name
    self.name = I18n.transliterate(name).upcase.strip if name.present?
  end
end

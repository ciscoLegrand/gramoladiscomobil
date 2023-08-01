class Album < ApplicationRecord
  include FriendlyId
  friendly_id :title, use: :slugged

  has_many_attached :images do |attachable|
    attachable.variant :mobile, resize_to_limit: [480, 800]
    attachable.variant :tablet, resize_to_limit: [800, 1280]
    attachable.variant :desktop, resize_to_limit: [1280, 1024]
    attachable.variant :widescreen, resize_to_limit: [1920, 1080]
  end

  enum status: { draft: 'draft', publish: 'publish' }
  after_commit :update_image_counter, on: [:create, :update]

  validates :title, presence: true, length: { minimum: 3, maximum: 255 }, uniqueness: true
  validate :validate_image_size

  def images_uploaded_after(**dates)
    start_date = dates[:start_date]&.beginning_of_day || Time.now.beginning_of_day
    end_date = dates[:end_date]&.end_of_day || Time.now.end_of_day
    images.blobs.joins(:attachments).where('active_storage_attachments.created_at BETWEEN ? AND ?', start_date, end_date).count
  end

  def update_status!
    published! if published_at.present? && published_at <= Time.now
  end

  scope :published, -> { where(status: :publish) }
  scope :draft, -> { where(status: :draft) }
  scope :by_year, ->(year) { where('extract(year from published_at) = ?', year) }

  private

  def update_image_counter
    UpdateImageCounterJob.perform_later(self.id)
  end

  def validate_image_size
    if images.attached?
      images.each do |image|
        if image.blob.byte_size > 15.megabyte
          image.purge
          errors.add(:images, 'size too large. Images should be less than 15MB each')
        end
      end
    end
  end
end

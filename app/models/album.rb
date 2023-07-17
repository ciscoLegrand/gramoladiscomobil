class Album < ApplicationRecord
  include FriendlyId
  friendly_id :title, use: :slugged

  has_many_attached :images do |attachable|
    attachable.variant :mobile, resize_to_limit: [480, 800]
    attachable.variant :tablet, resize_to_limit: [800, 1280]
    attachable.variant :desktop, resize_to_limit: [1280, 1024]
    attachable.variant :widescreen, resize_to_limit: [1920, 1080]
  end

  enum status: { draft: 'draft', published: 'published' }
  after_commit :update_image_counter, on: [:create, :update]

  def images_uploaded_after(**dates)
    start_date = dates[:start_date]&.beginning_of_day || Time.now.beginning_of_day
    end_date = dates[:end_date]&.end_of_day || Time.now.end_of_day
    images.blobs.joins(:attachments).where('active_storage_attachments.created_at BETWEEN ? AND ?', start_date, end_date).count
  end

  private

  def update_image_counter
    UpdateImageCounterJob.perform_later(self.id)
  end
end

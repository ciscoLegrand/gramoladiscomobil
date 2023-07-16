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
  private

  def update_image_counter
    UpdateImageCounterJob.perform_later(self.id)
  end
end

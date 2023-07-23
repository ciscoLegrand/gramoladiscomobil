class Contact < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :body, presence: true

  after_create :send_email

  scope :read, -> { where("data->>'opened' = 'true'") }
  scope :unread, -> { where("data->>'opened' = 'false'") }
  scope :by_date, -> { order(created_at: :desc) }

  private

  def send_email
    mailer = ContactMailer.with(contact: self)
    mailer.client_email.deliver_later
    mailer.admin_email.deliver_later
  end
end

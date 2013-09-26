class Megaphone::Message < ActiveRecord::Base
  # == Accessible ==
  attr_accessible :link, :text, :title, :thumb

  # == Associations ==
  belongs_to :category
  belongs_to :notifiable, polymorphic: true

  # == Scopes ==
  default_scope includes(:category)
  scope :recent, -> { where("megaphone_messages.created_at > ?", 1.month.ago) }
  scope :unread, -> { where(read: false) }
end

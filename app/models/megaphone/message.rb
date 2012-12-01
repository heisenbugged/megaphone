class Megaphone::Message < ActiveRecord::Base
  def self.table_name_prefix
    'megaphone_'
  end

  # == Accessible ==
  attr_accessible :link, :text, :title

  # == Associations ==
  belongs_to :category
  belongs_to :notifiable, polymorphic: true

  # == Scopes ==
  default_scope includes(:category)
  scope :recent, -> { where("megaphone_messages.created_at > ?", 1.month.ago) }
  scope :unread, -> { where(read: false) }
end

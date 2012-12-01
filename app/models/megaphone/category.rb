class Megaphone::Category < ActiveRecord::Base
  # == Accessible ==
  attr_accessible :name

  # == Associations ==
  has_many :messages

  # == Validations ==
  validates :name, presence: true, uniqueness: true
end

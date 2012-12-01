class Megaphone::Category < ActiveRecord::Base
  def self.table_name_prefix
    'megaphone_'
  end

  # == Accessible ==
  attr_accessible :name

  # == Associations ==
  has_many :messages

  # == Validations ==
  validates :name, presence: true, uniqueness: true
end

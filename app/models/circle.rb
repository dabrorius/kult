class Circle < ActiveRecord::Base
  has_many :posts
  has_many :memberships
  has_many :users, through: 'memberships'

  validates :name, presence: true
  validates :uuid, presence: true

  before_validation :set_uuid

  def set_uuid
    self.uuid ||= SecureRandom.uuid
  end
end

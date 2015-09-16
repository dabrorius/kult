class Circle < ActiveRecord::Base
  validates :name, presence: true
  validates :uuid, presence: true

  before_validation :set_uuid

  def set_uuid
    self.uuid ||= SecureRandom.uuid
  end
end

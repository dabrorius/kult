class Membership < ActiveRecord::Base
  belongs_to :user
  belongs_to :kult

  validates :user, presence: true
  validates :kult, presence: true
  validates :role, presence: true, inclusion: { in: %w(member admin) }
end

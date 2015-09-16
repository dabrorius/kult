class Membership < ActiveRecord::Base
  belongs_to :user
  belongs_to :circle

  validates :user, presence: true
  validates :circle, presence: true
  validates :role, presence: true, inclusion: { in: %w(member admin) }
end

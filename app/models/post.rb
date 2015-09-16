class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :circle

  validates :user, presence: true
  validates :circle, presence: true
end

class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :kult

  validates :user, presence: true
  validates :kult, presence: true
  validates :content, presence: true
end

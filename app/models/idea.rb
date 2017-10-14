class Idea < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, :description, presence: true
  acts_as_votable
  self.per_page = 10
end

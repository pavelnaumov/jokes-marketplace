class Joke < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :user, presence: false
  #validates :rating, default: 0
end

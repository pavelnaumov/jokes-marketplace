class Joke < ApplicationRecord
  belongs_to :user

  has_many :bought_jokes
  validates :title, presence: true
  validates :description, presence: true
  validates :user, presence: false
end

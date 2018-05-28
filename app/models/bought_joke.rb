class BoughtJoke < ApplicationRecord
  belongs_to :user
  belongs_to :joke
end

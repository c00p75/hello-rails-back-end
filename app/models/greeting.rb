class Greeting < ApplicationRecord
  validates :message, presence: true

  scope :random, -> { order('RANDOM()').limit(1) }
end

class Booking < ApplicationRecord
  belongs_to :tattoo
  belongs_to :user
  validates :date, :status, presence: true
end

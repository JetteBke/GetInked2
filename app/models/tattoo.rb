class Tattoo < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :photo, :description, presence: true
  mount_uploader :photo, PhotoUploader
end


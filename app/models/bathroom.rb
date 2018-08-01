class Bathroom < ApplicationRecord
  belongs_to :user
  has_many :bookings
  mount_uploader :photo1, PhotoUploader
  mount_uploader :photo2, PhotoUploader
  mount_uploader :photo3, PhotoUploader
end

class Bathroom < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  mount_uploader :photo1, PhotoUploader
  mount_uploader :photo2, PhotoUploader
  mount_uploader :photo3, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

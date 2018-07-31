class User < ApplicationRecord
  has_many :bathrooms
  has_many :bookings
end

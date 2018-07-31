class User < ApplicationRecords
  has_many :bathrooms
  has_many :bookings
end

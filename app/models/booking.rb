class Booking < ApplicationRecord
  belongs_to :bathroom
  belongs_to :user
end

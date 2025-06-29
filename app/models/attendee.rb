class Attendee < ApplicationRecord
  has_many :registrations
  has_many :events
end

class Event < ApplicationRecord
  has_many :registrations
  has_many :attendees
end

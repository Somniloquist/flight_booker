class Flight < ApplicationRecord
  has_many :airports
  has_many :bookings
  accepts_nested_attributes_for :airports
  belongs_to :start_airport, class_name: "Airport"
  belongs_to :finish_airport, class_name: "Airport"
end

class Event < ApplicationRecord
  belongs_to :creator, :class_name => "User"
  has_many :guests
  has_many :attendees, through: :guests, source: :user

  scope :prev, -> {where('date < ?', Date.today)}
  scope :next,-> {where('date >= ?', Date.today)}
end

class Activity < ActiveRecord::Base
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :starting_time, presence: true
  validates :end_time, presence: true
  validates :price, presence: true
end

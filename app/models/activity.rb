class Activity < ActiveRecord::Base
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true, inclusion: {in: %w( Cuisine Informatique Conversation Lecture)}
  validates :starting_time, presence: true
  validates :end_time, presence: true
  validates :price, presence: true

  def self.search(query)
    where("name = ? AND starting_time >= ? AND end_time <= ?", query[:name], query[:starting_time], query[:end_time])
  end
end


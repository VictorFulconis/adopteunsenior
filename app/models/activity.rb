class Activity < ActiveRecord::Base
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true, inclusion: {in: %w( Cuisine Informatique Conversation Echec)}
  validates :starting_time, presence: true
  validates :end_time, presence: true
  validates :price, presence: true

  def self.search(query)
    where(name: query[:name])
  end
end


# && where(:starting_time >= query[:starting_time]) && where(:end_time <= query[:end_time])

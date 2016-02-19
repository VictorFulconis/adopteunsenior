class Activity < ActiveRecord::Base
  belongs_to :user
  has_many :bookings
  validates :name, presence: true, inclusion: {in: %w( Cuisine Informatique Conversation Lecture)}
  validates :starting_time, presence: true
  validates :end_time, presence: true
  validates :price, presence: true

  def self.search(query)
    if query[:name] == "" && query[:starting_time] == "" && query[:end_time] == ""
      all
    elsif query[:starting_time] == "" && query[:end_time] == ""
      where("name = ?", query[:name])
    elsif query[:name] == "" && query[:end_time] == ""
      where("starting_time <= ?", query[:starting_time].to_date)
    elsif query[:name] == "" && query[:starting_time] == ""
      where("end_time >= ?", query[:end_time].to_date)
    elsif query[:end_time] == ""
      where("name = ? AND starting_time <= ?", query[:name], query[:starting_time].to_date)
    elsif query[:name] == ""
      where("starting_time <= ? AND end_time >= ?", query[:starting_time].to_date, query[:end_time].to_date)
    elsif query[:starting_time] == ""
      where("name = ? AND end_time >= ?", query[:name], query[:end_time].to_date)
    else
      where("name = ? AND starting_time <= ? AND end_time >= ?", query[:name], query[:starting_time].to_date, query[:end_time].to_date)
    end
  end
end


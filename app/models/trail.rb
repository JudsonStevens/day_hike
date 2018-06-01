class Trail < ApplicationRecord
  has_many :trail_trips
  has_many :trips, through: :trail_trips

  def total_trips_length
    Trail.joins(:trips).select("")
  end

  def total_number_of_trips
    trips.count
  end
end 

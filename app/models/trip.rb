class Trip < ApplicationRecord
  has_many :trail_trips
  has_many :trails, through: :trail_trips

  def total_trail_length
    trails.sum(:length)
  end

  def average_trail_length
    trails.average(:length)
  end
end

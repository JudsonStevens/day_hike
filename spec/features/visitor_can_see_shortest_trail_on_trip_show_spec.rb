require 'rails_helper'

describe 'Visitor' do
  context 'visits a trip show page' do
    it 'can see shortest trail out of all trails on this trip' do
      trip1 = Trip.create(name: 'Denver Trip', start_date: Time.now, end_date: Time.now)
      trail1 = trip1.trails.create(name: 'Oregon Trail', address: '1233 Oregon Lane', length: 15)
      trail2 = trip1.trails.create(name: 'LA Trail', address: '1233 LA Lane', length: 5)

      visit(trip_path(trip1))

      expect(page).to have_content("Shortest Trail Distance: #{trail2.length} miles.")
    end
  end
end

require 'rails_helper'

describe 'Visitor' do
  context 'visits a trip show page' do
    it 'can click on a trail name to go to that trails show page' do
      trip1 = Trip.create(name: 'Denver Trip', start_date: Time.now, end_date: Time.now)
      trip2 = Trip.create(name: 'LA Trip', start_date: Time.now, end_date: Time.now)
      trail1 = trip1.trails.create(name: 'Oregon Trail', address: '1233 Oregon Lane', length: 15)
      trail2 = trip1.trails.create(name: 'LA Trail', address: '1233 LA Lane', length: 5)
      TrailTrip.create(trip_id: trip2.id, trail_id: trail1.id)
      visit(trail_path(trail1))

      expect(page).to have_content("Total number of trips that include this trail: 2")
    end
  end
end
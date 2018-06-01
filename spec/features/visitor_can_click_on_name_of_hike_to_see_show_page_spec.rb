require 'rails_helper'

describe 'Visitor' do
  context 'visits index and clicks on a trip' do
    it 'can see information about that trip on a show page' do
      trip1 = Trip.create(name: 'Denver Trail', start_date: Time.now, end_date: Time.now)
      trail1 = trip1.trails.create(name: 'Oregon Trail', address: '1233 Oregon Lane', length: 15)
      trail2 = trip1.trails.create(name: 'LA Trail', address: '1233 LA Lane', length: 5)

      visit(trips_path)

      click_on('Denver Trail')

      expect(current_path).to eq(trip_path(trip1))
    end
  end
end

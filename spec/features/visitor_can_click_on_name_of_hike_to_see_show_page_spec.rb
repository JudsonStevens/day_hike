require 'rails_helper'

describe 'Visitor' do
  context 'visits index and clicks on a trip' do
    it 'can see information about that trip on a show page' do
      trip1 = Trip.create(name: 'Denver Trail', start_date: Time.now, end_date: Time.now)

      visit(trips_path)

      click_on('Denver Trail')

      expect(current_path).to eq(trip_path(trip1))
    end
  end
end

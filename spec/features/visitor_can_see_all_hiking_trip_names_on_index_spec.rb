require 'rails_helper'

describe 'Visitor' do
  context 'visits the trips index page' do
    it 'can see all names of hiking trips' do
      trip1 = Trip.create(name: 'Denver Trip', start_date: Time.now, end_date: Time.now)
      trip2 = Trip.create(name: 'LA Trip', start_date: Time.now, end_date: Time.now)

      visit(trips_path)

      expect(page).to have_content(trip1.name)
      expect(page).to have_content(trip2.name)
    end
  end
end



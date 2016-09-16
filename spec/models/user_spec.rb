require 'rails_helper'

RSpec.describe User, :type => :model do
  describe 'associations' do
  	it 'has many evenings' do
  		u = FactoryGirl.create(:user)

  		2.times do
  			FactoryGirl.create(:evening, host_id: u.id)
  		end

	    expect(u.evenings.count).to eq(2)
	  end

	  it 'participates in many evenings' do 
	  	guest = FactoryGirl.create(:user)
      host = FactoryGirl.create(:user, email: 'host@host.com')
      evening = FactoryGirl.create(:evening, host_id: host.id)
      evening2 = FactoryGirl.create(:evening, host_id: host.id)

      participation1 = FactoryGirl.create(:participation, guest_id: guest.id, evening_id: evening.id)
      participation2 = FactoryGirl.create(:participation, guest_id: guest.id, evening_id: evening2.id)


      expect(guest.participated_evenings.count).to eq(2)	   
	  end
  end
end

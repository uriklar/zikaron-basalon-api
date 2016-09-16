require 'rails_helper'

describe "Users API" do
	include_context "api request authentication helper methods"
  include_context "api request global before and after hooks"

	describe 'authentication' do
	  it 'signs user in' do
	  	user_params = {
	  		email: 'user@user.com',
			  password: '123456',
			  password_confirmation: '123456'
	  	}

	    u = FactoryGirl.create(:user, user_params)

	    post '/users/sign_in', { email: 'user@user.com', password: '123456' }

	    # test for the 200 status-code
	    expect(json).to be_success

	    
	    # check to make sure the right amount of messages are returned
	    expect(json.length).to eq(10)
	  end
	end
end
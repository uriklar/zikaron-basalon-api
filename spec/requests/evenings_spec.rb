describe "Evenings API" do
	include_context "api request authentication helper methods"
   include_context "api request global before and after hooks"

	describe 'index' do
	  it 'sends a list of evenings' do
	  	user = FactoryGirl.create(:user)
	    FactoryGirl.create_list(:evening, 10, host_id: user.idס)

	    get '/evenings'

	    # test for the 200 status-code
	    expect(response).to be_success

	    # check to make sure the right amount of messages are returned
	    expect(json.length).to eq(10)
	  end
	end

	describe 'create' do
		it 'should return 401 error for non logged in user' do
			evening_params = FactoryGirl.build(:evening).attributes

			post '/evenings', evening: evening_params
  		
  		expect(response).to have_http_status(401)
		end

		it 'should return evening for logged in user' do
			user = FactoryGirl.create(:user)
			evening_params = FactoryGirl.build(:evening, host_id: user.id).attributes

			post '/evenings', evening: evening_params, 
												authentication_token: user.authentication_token

			expect(response).to be_success
			expect(json['address']).to eq(evening_params[:address])
		end
	end
end
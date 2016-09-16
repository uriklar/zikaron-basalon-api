require 'rails_helper'

RSpec.describe "Witnesses", :type => :request do
  describe "GET /witnesses" do
    it "works! (now write some real specs)" do
      get witnesses_path
      expect(response).to have_http_status(200)
    end
  end
end

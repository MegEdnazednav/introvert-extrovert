require 'rails_helper'

RSpec.describe "create a new user", type: :request do
  subject { get "/questions/#{question.id}"}
  let(:question) { create(:question) }
  let(:user) { create(:user) }

  before { user }

  context "With current user" do
    it 'redirects to root path' do
      get "/questions/#{question.id}"
      expect(response.status).to be(200)
      expect(response.body).to include(question.text)
    end
  end
end

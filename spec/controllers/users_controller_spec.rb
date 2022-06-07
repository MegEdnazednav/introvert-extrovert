require 'rails_helper'

RSpec.describe "create a new user", type: :request do
  subject { post "/users", params: create_params }
  let(:question) { create(:question) }
  let(:create_params) do
    {
      user: { name: "Bertolli" },
      id: 1
    }
  end

  before { question }
  context "With correct name param" do
    it 'saves the user' do
      expect{ subject }.to change{ User.count }.by(1)
    end
  end

  context "Without correct name param" do
    let(:create_params) { { name: nil } }

    it 'raises a parameter missing error' do
      expect{ subject }.to raise_error(ActionController::ParameterMissing)
    end
  end
end

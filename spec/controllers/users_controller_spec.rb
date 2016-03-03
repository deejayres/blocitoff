require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  before do
    my_user = create(:user)
    my_user.confirm
    sign_in my_user
  end

  describe "GET show" do
    it "returns http success" do
      get :show

      expect(response).to have_http_status(:success)
    end
  end
end

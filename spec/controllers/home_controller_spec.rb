require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  before do
    my_user = create(:user)
    my_user.confirm
    sign_in my_user
  end
  
  describe "GET index" do
    it "renders the index template" do
      get :index

      expect(response).to render_template("index")
    end
  end
end

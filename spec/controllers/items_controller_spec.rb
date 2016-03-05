require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  before do
    @my_user = create(:user)
    sign_in @my_user
  end
  let(:my_item) { create(:item, user: @my_user)}

  describe "POST create" do
    it "increases the number of items by 1" do
      expect{post :create, user_id: @my_user.id, item: {name: "Example"}}.to change(Item, :count).by(1)
    end

    it "assigns the new item to @item" do
      post :create, user_id: @my_user.id, item: {name: my_item.name}

      expect(assigns(:item)).to eq Item.last
    end

    it "redirects to user#show" do
      post :create, user_id: @my_user.id, item: {name: my_item.name}

      expect(response).to redirect_to root_path
    end
  end
end

require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  before do
    @my_user = create(:user)
    sign_in @my_user
  end
  let(:my_item) { create(:item, user: @my_user)}

  describe "POST create" do
    it "increases the number of items by 1" do
      expect{post :create, user_id: @my_user.id, item: {name: my_item.name}}.to change(Item, :count).by(1)
    end
  end
end

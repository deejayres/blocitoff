require 'rails_helper'

RSpec.describe Item, type: :model do

  describe "time_left" do
    before do
      @my_item = create(:item)
    end

    it "reports the correct time left for the to-do item" do
      expect(@my_item.time_left).to eq(7)
    end
  end
end

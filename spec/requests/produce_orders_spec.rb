require 'rails_helper'

RSpec.describe "ProduceOrders", type: :request do
  describe "GET /produce_orders" do
    it "works! (now write some real specs)" do
      get produce_orders_path
      expect(response).to have_http_status(200)
    end
  end
end

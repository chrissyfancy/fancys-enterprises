require 'rails_helper'

RSpec.describe "produce_orders/index", type: :view do
  before(:each) do
    assign(:produce_orders, [
      ProduceOrder.create!(),
      ProduceOrder.create!()
    ])
  end

  it "renders a list of produce_orders" do
    render
  end
end

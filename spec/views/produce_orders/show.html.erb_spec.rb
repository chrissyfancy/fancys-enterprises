require 'rails_helper'

RSpec.describe "produce_orders/show", type: :view do
  before(:each) do
    @produce_order = assign(:produce_order, ProduceOrder.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

require 'rails_helper'

RSpec.describe "produce_orders/new", type: :view do
  before(:each) do
    assign(:produce_order, ProduceOrder.new())
  end

  it "renders new produce_order form" do
    render

    assert_select "form[action=?][method=?]", produce_orders_path, "post" do
    end
  end
end

require 'rails_helper'

RSpec.describe "produce_orders/edit", type: :view do
  before(:each) do
    @produce_order = assign(:produce_order, ProduceOrder.create!())
  end

  it "renders the edit produce_order form" do
    render

    assert_select "form[action=?][method=?]", produce_order_path(@produce_order), "post" do
    end
  end
end

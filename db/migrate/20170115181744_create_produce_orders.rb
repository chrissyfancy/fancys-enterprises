class CreateProduceOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :produce_orders do |t|

      t.timestamps
    end
  end
end

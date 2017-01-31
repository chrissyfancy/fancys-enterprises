class CreateMoving < ActiveRecord::Migration[5.0]
  def change
    create_table :moving_jobs do |t|
      t.string :customer_name, null: false
      t.string :customer_email, null: false
      t.string :customer_phone_no, null: false
      t.string :customer_street_address
      t.string :customer_town
      t.string :customer_state
      t.integer :customer_zipcode
      t.text :customer_message
      t.date :date_of_move
      t.integer :estimated_amount_of_hours
      t.integer :requested_amount_of_movers
    end
  end
end

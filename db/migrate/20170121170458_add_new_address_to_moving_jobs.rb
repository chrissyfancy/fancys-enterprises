class AddNewAddressToMovingJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :moving_jobs, :new_customer_address, :string
    add_column :moving_jobs, :new_customer_town, :string
    add_column :moving_jobs, :new_customer_state, :string
    add_column :moving_jobs, :new_customer_zipcode, :string
  end
end

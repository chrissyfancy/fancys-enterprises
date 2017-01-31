class CreateMovingJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :moving_jobs, :created_at, :datetime
    add_column :moving_jobs, :updated_at, :datetime    
  end
end

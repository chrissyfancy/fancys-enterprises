class MovingJobsController < ApplicationController

  def index
    @all_jobs = MovingJob.all
  end

  def show
    @moving_job = MovingJob.find(params[:id])
  end

  def new
    @moving_job = MovingJob.new
    @state_collection = MovingJob::STATES
  end

  def create
    @moving_job = MovingJob.new(moving_job_params)

    if @moving_job.save
      MovingFormMailer.new_moving_job(@moving_job).deliver_later
      redirect_to @moving_job, notice: 'Thank you! Your moving job inquiry was successfully submitted.'
    else
      render :new
    end
  end

  def edit
    @moving_job = MovingJob.find(params[:id])
  end

  private

  def moving_job_params
    params.require(:moving_job).permit(
      :customer_name,
      :customer_email,
      :customer_phone_no,
      :customer_street_address,
      :customer_town,
      :customer_state,
      :customer_zipcode,
      :customer_message,
      :date_of_move,
      :estimated_amount_of_hours,
      :requested_amount_of_movers,
      :new_customer_address,
      :new_customer_town,
      :new_customer_state,
      :new_customer_zipcode,
    )
  end
end

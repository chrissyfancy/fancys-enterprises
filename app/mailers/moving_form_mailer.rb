class MovingFormMailer < ApplicationMailer
  def new_moving_job(moving_job)
    @moving_job = moving_job

    mail(
      to: "ron@fancys.us",
      subject: "Moving Job Inquiry from #{@moving_job.customer_name}"
    )
  end
end

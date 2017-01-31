class ApplicationMailer < ActionMailer::Base
  default from: "\"Ron Fancy\" <ron@fancys.us>"
  layout 'mailer'
end

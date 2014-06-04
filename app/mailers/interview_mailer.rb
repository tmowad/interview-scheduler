class InterviewMailer < ActionMailer::Base
  default from: "nobody@nowhere.com"

  def confirm_creation(interview)
    @interview = interview
    mail(:to => @interview.recruiter_email, :subject => 'Please confirm this interview request')
  end
end

class InterviewsController < ApplicationController
  def new
    @interview = Interview.new
  end

  # TODO: how to save a Random.new object?
  def generate_random_key
    Random.new.rand.to_s =~ /^0\.(\d+)/
    $1
  end

  def create
    @interview = Interview.create(params[:interview].permit(:recruiter_email))

    @interview.recruiter_key = generate_random_key

    if @interview.save then
      InterviewMailer.confirm_creation(@interview).deliver

      redirect_to :action => :show, :id => @interview.id
    else
      flash[:warn] = "Creation failed."
      redirect_to 'new'
    end
  end

  def show
    @interview = Interview.find(params[:id])
  end

  def confirm_creation
    key = params[:recruiter_key] 
    interview = Interview.find_by_recruiter_key(key) if key
    if interview then
      redirect_to :action => :show, :id => interview.id
    else
      # TODO: what to actually do here??
      # redirect_to :action => :blah_fake
    end
  end
end

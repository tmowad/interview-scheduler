class InterviewsController < ApplicationController
  def new
    @interview = Interview.new
  end

  def create
    @interview = Interview.create(params[:interview].permit(:recruiter_email))

    if @interview.save then
      redirect_to :action => :show, :id => @interview.id
    else
      flash[:warn] = "Creation failed."
      redirect_to 'new'
    end
  end

  def show
    @interview = Interview.find(params[:id])
  end
end

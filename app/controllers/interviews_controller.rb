class InterviewsController < ApplicationController
  def new
    @interview = Interview.new
  end
end

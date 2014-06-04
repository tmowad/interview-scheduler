require 'test_helper'

class InterviewsControllerTest < ActionController::TestCase
  test "should get create_request" do
    get :create_request
    assert_response :success
  end

end

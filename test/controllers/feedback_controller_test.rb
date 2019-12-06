require 'test_helper'

class FeedbackControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get feedback_new_url
    assert_response :success
  end

  test "should get fbform" do
    get feedback_fbform_url
    assert_response :success
  end

end

require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index page" do
    get :index
    assert_response :success
  end
   
  test "should get new url" do
    get :new
    assert_response :success
  end

  test "should get import url" do
    get :import
    assert_response :success
  end
end

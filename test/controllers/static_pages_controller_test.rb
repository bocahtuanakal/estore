require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
    
  def setup
    @base_title = "WazQiTo"
  
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get signup" do
    get :signup
    assert_response :success
    assert_select "title", "Sign Up | #{@base_title}"
  end

end

require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get pick" do
    get home_pick_url
    assert_response :success
  end

end

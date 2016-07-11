require 'test_helper'

class ServicesLocationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get services_location_index_url
    assert_response :success
  end

end

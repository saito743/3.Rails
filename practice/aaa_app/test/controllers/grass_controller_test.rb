require 'test_helper'

class GrassControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get grass_new_url
    assert_response :success
  end

end

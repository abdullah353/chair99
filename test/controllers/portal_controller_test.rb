require 'test_helper'

class PortalControllerTest < ActionDispatch::IntegrationTest
  test "should get csv_portal" do
    get portal_csv_portal_url
    assert_response :success
  end

end

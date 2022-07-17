require "test_helper"

class WorkshopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get workshop_index_url
    assert_response :success
  end
end

require "test_helper"

class OtherControllerTest < ActionDispatch::IntegrationTest
  test "should get job_done" do
    get other_job_done_url
    assert_response :success
  end
end

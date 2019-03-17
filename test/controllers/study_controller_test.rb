require 'test_helper'

class StudyControllerTest < ActionDispatch::IntegrationTest
  test "should get ajax" do
    get study_ajax_url
    assert_response :success
  end

end

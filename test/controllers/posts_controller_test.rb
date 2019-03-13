require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get posts_contact_url
    assert_response :success
  end

end

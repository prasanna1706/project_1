require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get _form" do
    get comments__form_url
    assert_response :success
  end

end

require 'test_helper'

class BoughtJokesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bought_jokes_index_url
    assert_response :success
  end

  test "should get destroy" do
    get bought_jokes_destroy_url
    assert_response :success
  end

end

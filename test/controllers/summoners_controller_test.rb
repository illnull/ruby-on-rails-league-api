require 'test_helper'

class SummonersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get summoners_index_url
    assert_response :success
  end

  test "should get show" do
    get summoners_show_url
    assert_response :success
  end

end

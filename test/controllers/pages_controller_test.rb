require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get nouveaute" do
    get pages_nouveaute_url
    assert_response :success
  end

  test "should get membre" do
    get pages_membre_url
    assert_response :success
  end

  test "should get apropos" do
    get pages_apropos_url
    assert_response :success
  end

end

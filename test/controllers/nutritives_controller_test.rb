require 'test_helper'

class NutritivesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nutritives_index_url
    assert_response :success
  end

  test "should get search" do
    get nutritives_search_url
    assert_response :success
  end

end

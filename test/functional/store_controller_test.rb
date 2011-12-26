require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', minimun: 4
    assert_select '#main .entry', 4
    assert_select 'h3', 'Programming Ruby 1.9'
    assert_select '.price', /\&euro;[,\d]+\.\d\d/
  end

end

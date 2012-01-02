require 'test_helper'

class InvalidAccessTest < ActionDispatch::IntegrationTest
  fixtures :all

  # test "the truth" do
  #   assert true
  # end

  test 'try to access an invalid product' do

  	# A user goes to the product index page

  	get "/products"
  	assert_response :success
  	assert_template "index"

  	# Try to display an invalid product

  	get "/products/99"
  	assert_response :redirect
  	assert_template "index"

  end

end

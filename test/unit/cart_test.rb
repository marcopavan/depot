require 'test_helper'

class CartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "cart should create a new line item when adding a new product" do
  	cart = Cart.create
	cart.add_product(products(:ruby).id, products(:ruby).price).save
	assert_equal 1, cart.line_items.length
  end

  test "cart shouldn't create a new line item when adding a duplicated product" do
  	cart = Cart.create
	cart.add_product(products(:ruby).id, products(:ruby).price).save
	cart.add_product(products(:ruby).id, products(:ruby).price).save
	assert_equal 1, cart.line_items.length
  end

  test "cart should create 2 new line item when adding 2 new product" do
  	cart = Cart.create
	cart.add_product(products(:one).id, products(:one).price).save
	cart.add_product(products(:two).id, products(:two).price).save
	assert_equal 2, cart.line_items.length
  end

end

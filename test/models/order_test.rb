require "test_helper"

class OrderTest < ActiveSupport::TestCase
  def test_should_not_save_order_without_attributes
    order = Order.new
    assert_not order.save
  end
end

require "test_helper"

class DisbursementTest < ActiveSupport::TestCase
  def test_disbursed_amount_should_be_zero
    order = Order.new
    order.merchant_id = 25
    order.shopper_id = 3351
    order.amount = 0 * 100
    order.completed_at = "01/07/2017 14:24:01"
    disbursementCalculator = DisbursementCalculator.new
    disbursedAmount = disbursementCalculator.execute(order)
    assert_equal 0, disbursedAmount, "Amounts dont match"

  end
end
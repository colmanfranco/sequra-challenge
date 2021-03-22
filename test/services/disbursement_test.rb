require "test_helper"

class DisbursementTest < ActiveSupport::TestCase
  def test_disbursed_amount_should_be_zero
    order = get_test_order
    order.amount = 0 * 100
    disbursementCalculator = DisbursementCalculator.new
    disbursedAmount = disbursementCalculator.execute(order)

    assert_equal 0, disbursedAmount, "Amounts dont match"
    end

  def test_disbursed_amount_should_be_one_percent_of_one
    order = get_test_order
    order.amount = 1 * 100
    disbursementCalculator = DisbursementCalculator.new
    disbursedAmount = disbursementCalculator.execute(order)

    assert_equal (1 * 0.001), disbursedAmount, "Amounts dont match"
  end

  private

  def get_test_order
    order = Order.new
    order.merchant_id = 25
    order.shopper_id = 3351
    order.completed_at = "01/07/2017 14:24:01"
    order
  end

end
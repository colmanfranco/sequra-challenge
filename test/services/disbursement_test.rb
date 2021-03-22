require "test_helper"

class DisbursementTest < ActiveSupport::TestCase
  def test_disbursed_amount_should_be_zero
    order = get_test_order(0)
    disbursementCalculator = DisbursementCalculator.new
    disbursedAmount = disbursementCalculator.execute(order)

    assert_equal 0, disbursedAmount, "Amounts dont match"
    end

  def test_disbursed_amount_should_be_one_percent_of_one
    order = get_test_order(1)
    disbursementCalculator = DisbursementCalculator.new
    disbursedAmount = disbursementCalculator.execute(order)

    assert_equal (100 * 0.001), disbursedAmount, "Amounts dont match"
  end


  private

  def get_test_order(amount)
    order = Order.new
    order.merchant_id = 25
    order.shopper_id = 3351
    order.amount = amount * 100
    order.completed_at = "01/07/2017 14:24:01"
    order
  end

end
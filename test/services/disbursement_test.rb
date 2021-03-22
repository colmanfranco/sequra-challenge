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

    assert_equal ((order.amount).to_i * 0.01), disbursedAmount, "Amounts dont match"
    end

  def test_disbursed_amount_should_be_one_percent_of_twenty
    order = get_test_order(20)
    disbursementCalculator = DisbursementCalculator.new
    disbursedAmount = disbursementCalculator.execute(order)

    assert_equal ((order.amount).to_i * 0.01), disbursedAmount, "Amounts dont match"
    end

  def test_disbursed_amount_should_be_one_percent_of_forty_nine
    order = get_test_order(49)
    disbursementCalculator = DisbursementCalculator.new
    disbursedAmount = disbursementCalculator.execute(order)

    assert_equal ((order.amount).to_i * 0.01), disbursedAmount, "Amounts dont match"
    end

  def test_disbursed_amount_should_be_zero_ninety_five_percent_of_fifty
    order = get_test_order(50)
    disbursementCalculator = DisbursementCalculator.new
    disbursedAmount = disbursementCalculator.execute(order)

    assert_equal ((order.amount).to_i * 0.0095), disbursedAmount, "Amounts dont match"
    end

  def test_disbursed_amount_should_be_zero_ninety_five_percent_of_hundred
    order = get_test_order(100)
    disbursementCalculator = DisbursementCalculator.new
    disbursedAmount = disbursementCalculator.execute(order)

    assert_equal ((order.amount).to_i * 0.0095), disbursedAmount, "Amounts dont match"
    end

  def test_disbursed_amount_should_be_zero_ninety_five_percent_of_two_hundred
    order = get_test_order(200)
    disbursementCalculator = DisbursementCalculator.new
    disbursedAmount = disbursementCalculator.execute(order)

    assert_equal ((order.amount).to_i * 0.0095), disbursedAmount, "Amounts dont match"
    end

  def test_disbursed_amount_should_be_zero_ninety_five_percent_of_three_hundred
    order = get_test_order(300)
    disbursementCalculator = DisbursementCalculator.new
    disbursedAmount = disbursementCalculator.execute(order)

    assert_equal ((order.amount).to_i * 0.0095), disbursedAmount, "Amounts dont match"
  end


  private

  def get_test_order(amount)
    order = Order.new
    order.merchant_id = 25
    order.shopper_id = 3351
    order.amount = amount
    order.completed_at = "01/07/2017 14:24:01"
    order
  end

end
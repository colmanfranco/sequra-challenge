class DisbursementCalculator

  def execute(order)
    small_amount_fee = 0.01
    order_amount = (order.amount).to_i

    if order_amount > Range::SECOND.amount
      return order_amount * Range::SECOND.fee
    end

    if order_amount >= Range::FIRST.amount
      return order_amount * Range::FIRST.fee
    end

    order_amount * small_amount_fee
  end
end

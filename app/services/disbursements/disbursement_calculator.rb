class DisbursementCalculator

  def execute(order_amount)
    if order_amount > Range::SECOND.amount
      return order_amount * Range::SECOND.fee
    end

    if order_amount >= Range::FIRST.amount
      return order_amount * Range::FIRST.fee
    end

    order_amount * Range::INFERIOR.fee
  end
end

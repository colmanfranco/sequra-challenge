class DisbursementCalculator
  def execute(order)
    order_amount = (order.amount).to_i
    if order_amount > Ranges::SECOND.amount
      return order_amount * Ranges::SECOND.fee
      end
    if order_amount >= Ranges::FIRST.amount
      return order_amount * Ranges::FIRST.fee
    end
    order_amount * 0.01
  end
end

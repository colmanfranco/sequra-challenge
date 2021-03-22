class DisbursementCalculator
  def execute(order)
    orderAmount = (order.amount).to_i
    if orderAmount > 300
      return orderAmount * 0.0085
      end
    if orderAmount >= 50
      return orderAmount * 0.0095
    end
    orderAmount * 0.01
  end
end
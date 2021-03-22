class DisbursementCalculator
  def execute(order)
    return (order.amount).to_i * 0.001
  end
end
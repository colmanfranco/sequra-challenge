class DisbursementCalculator
  def execute(order)
    return (order.amount).to_i * 0.01
  end
end
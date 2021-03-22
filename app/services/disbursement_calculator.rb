class DisbursementCalculator
  def execute(order)
    if (order.amount).to_i > 300
      return (order.amount).to_i * 0.0085
      end
    if (order.amount).to_i >= 50
      return (order.amount).to_i * 0.0095
    end
    return (order.amount).to_i * 0.01
  end
end
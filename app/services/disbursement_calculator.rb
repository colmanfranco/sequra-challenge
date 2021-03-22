class DisbursementCalculator
  def execute(order)
    order_amount = (order.amount).to_i
    ranges = {
      'First' => 50,
      'Second' => 300,
    }
    fees = {'First' => 0.0095, 'Second' => 0.0085}
    if order_amount > ranges['Second']
      return order_amount * fees['Second']
      end
    if order_amount >= ranges['First']
      return order_amount * fees['First']
    end
    order_amount * 0.01
  end
end
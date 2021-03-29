class CalculateDisbursementsJob < ApplicationJob
  queue_as :default

  def perform
    orders_to_calculate = Order.where('orders.completed_at != ?', "")
    orders_to_calculate.each do |order|
      Disbursement.create(
        merchant_id: order.merchant_id,
        amount: DisbursementCalculator.execute(order.amount))
    end
  end
end

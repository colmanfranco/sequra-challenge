class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :merchant_id
      t.string :shopper_id
      t.string :amount
      t.string :completed_at

      t.timestamps
    end
  end
end

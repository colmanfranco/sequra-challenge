class CreateDisbursements < ActiveRecord::Migration[6.1]
  def change
    create_table :disbursements do |t|
      t.string :merchant_id
      t.float :amount

      t.timestamps
    end
  end
end

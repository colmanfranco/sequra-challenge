class Order < ApplicationRecord
  validates_presence_of :merchant_id, :shopper_id, :amount, :completed_at
end

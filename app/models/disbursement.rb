class Disbursement < ApplicationRecord
  validates_presence_of :merchant_id, :amount
end

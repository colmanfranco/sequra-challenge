require "test_helper"

class MerchantTest < ActiveSupport::TestCase
  def test_should_not_save_merchant_without_attributes
    merchant = Merchant.new
    assert_not merchant.save
  end
end

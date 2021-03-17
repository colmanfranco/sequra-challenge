require "test_helper"

class ShopperTest < ActiveSupport::TestCase
  def test_should_not_save_shopper_without_attributes
    shopper = Shopper.new
    assert_not shopper.save
  end
end

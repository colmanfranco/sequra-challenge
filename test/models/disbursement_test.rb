require "test_helper"

class DisbursementTest < ActiveSupport::TestCase
  def test_should_not_save_disbursement_without_attributes
    disbursement = Disbursement.new
    assert_not disbursement.save
  end
end

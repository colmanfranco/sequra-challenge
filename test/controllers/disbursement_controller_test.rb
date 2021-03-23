require "test_helper"

class DisbursementControllerTest < ActionDispatch::IntegrationTest
  def test_should_get_disbursement_index
    get "/api/disbursement"
    assert_response :success
  end
end

require "test_helper"

class DisbursementControllerTest < ActionDispatch::IntegrationTest
  def test_should_get_disbursement_index
    get "/api/v1/disbursement"

    assert_equal "application/json; charset=utf-8", @response.content_type
    assert_response :success
    end

  def test_should_get_disbursement_for_specific_company
    save_test_disbursement
    get "/api/v1/disbursement/5"

    assert_equal "application/json; charset=utf-8", @response.content_type
    assert_response :success
  end

  private

  def save_test_disbursement
    disbursement = Disbursement.new
    disbursement.merchant_id = 5
    disbursement.amount = 650.13
    disbursement
  end
end

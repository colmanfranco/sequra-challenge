require "test_helper"

class DisbursementControllerTest < ActionDispatch::IntegrationTest
  def test_should_get_disbursement_index
    get "/api/v1/disbursement"

    assert_equal "application/json; charset=utf-8", @response.content_type
    assert_response :success
    end

  def test_should_get_disbursement_for_specific_company
    get "/api/v1/disbursement/5"

    assert_equal "application/json; charset=utf-8", @response.content_type
    assert_response :success
  end


end

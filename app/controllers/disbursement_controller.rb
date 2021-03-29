class DisbursementController < ApplicationController
  def index
    @disbursements = Disbursement.all
    render json: @disbursements
  end

  def show
    @merchant_disbursements = Disbursement.find_by(params[:merchant_id])
    render json: @merchant_disbursements
  end
end

class DisbursementController < ApplicationController
  def index
    @disbursements = Disbursement.all
    render json: @disbursements
  end
end

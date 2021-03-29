Rails.application.routes.draw do
  root "disbursement#index"
  scope '/api' do
    scope '/v1' do
      scope '/disbursement' do
        get '/' => 'disbursement#index'
        get '/:merchant_id' => 'disbursement#show'
      end
    end
  end
end

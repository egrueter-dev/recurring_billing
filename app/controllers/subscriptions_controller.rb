class SubscriptionsController < ApplicationController

  def new
  end

  def create
    response = Recurly::Subscription.create! plan_code: :good_audience,
      account: {
      account_code: 'john_rambo',
      billing_info: { token_id: params['response_token']['id']}
    }

  rescue Recurly::Resource::Invalid, Recurly::API::ResponseError => e
    redirect error_url
  end
end

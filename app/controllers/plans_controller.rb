class PlansController < ApplicationController

  def index
    @user_plans = Stripe::Plan.all
  end

  def new


  end

  def create

    # Use params to create or delete a new plan.
     # response = Stripe::Plan.create(
        # :amount => 2000,
        # :interval => 'month',
        # :name => 'Amazing Gold Plan',
        # :currency => 'usd',
        # :id => 'gold'
      # )

  end

  def delete
    # Pass the plan name in params...params[plan_name
    plan = Stripe::Plan.retrieve("001")
    plan.delete
  end

  def edit
  end
end

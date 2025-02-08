class PaymentController < ApplicationController
  def new
    render({:template => "templates_new/payment"})
  end
  def results
    @r = params["user_apr"].to_f / 100
    @n = params["user_years"].to_i
    @pv = params["user_pv"].to_f

    @result = (@r / 12) * @pv / (1 - (1 + (@r / 12)) ** -(@n * 12))
    render({:template => "templates_results/payment"})
  end
end

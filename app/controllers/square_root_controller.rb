class SquareRootController < ApplicationController
  def new
    render({:template => "templates_new/square_root"})
  end
  def results
    @number = params["number"]
    @result = @number.to_f ** 0.5
    render({:template => "templates_results/square_root"})
  end
end

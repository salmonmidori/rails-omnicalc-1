class SquareController < ApplicationController
  def new
    render({:template => "templates_new/square"})
  end
  def results
    @number = params["number"]
    @result = @number.to_f ** 2
    render({:template => "templates_results/square"})
  end
end

class RandomController < ApplicationController
  def new
    render({:template => "templates_new/random"})
  end
  def results
    @min = params["user_min"].to_f
    @max = params["user_max"].to_f
    @result = rand(@min..@max)
    render({:template => "templates_results/random"})
  end
end

class CalculationsController < ApplicationController
  def home
    render({ :template => "calc_templates/home" })
  end

  def square_form
    render({ :template => "calc_templates/square_form" })
  end

  def square_results
    @number = params.fetch("number").to_f
    @result = (@number ** 2).round(4)
    render({ :template => "calc_templates/square_results" })
  end

  def square_root_form
    render({ :template => "calc_templates/square_root_form" })
  end

  def square_root_results
    @number = params.fetch("number").to_f
    @result = (@number ** 0.5).round(3)
    render({ :template => "calc_templates/square_root_results" })
  end

  def payment_form
    render({ :template => "calc_templates/payment_form" })
  end

  def payment_results
    @apr = params.fetch("apr").to_f
    @years = params.fetch("years").to_i
    @principal = params.fetch("principal").to_f
    @result = (@apr / 1200 * @principal) / (1 - (1 + @apr / 1200) ** (-@years * 12))
    render({ :template => "calc_templates/payment_results" })
  end

  def random_form
    render({ :template => "calc_templates/random_form" })
  end

  def random_results
    @min = params.fetch("minimum").to_f
    @max = params.fetch("maximum").to_f
    @result = rand(@min..@max)
    render({ :template => "calc_templates/random_results" })
  end
end

class CalcController < ApplicationController
  def calculators
    render({ :template => "calc_templates/calculators" })
  end

  def sq_new
    render({ :template => "calc_templates/square_new" })
  end

  def sq_result
    @number = params.fetch("number").to_f
    @calc = @number * @number
    @result = @calc.to_f

    render({ :template => "calc_templates/square_result" })
  end

  def sq_root_new
    render({ :template => "calc_templates/square_root_new" })
  end

  def sq_root_result
    @number = params.fetch("number").to_f
    @result = Math.sqrt(@number)
  
    render({ :template => "calc_templates/square_root_result" })
  end
  
  def payment_new
    render({ :template => "calc_templates/payment_new" })
  end

  def payment_result
    @apr = params.fetch("apr").to_f
    @r = @apr / 100 / 12
    @years = params.fetch("years").to_i
    @n = @years * 12
    @principal = params.fetch("principal").to_f

    @numerator = @r * @principal
    @denominator = 1 - (1 + @r) ** -@n

    @result = @numerator / @denominator

    render({ :template => "calc_templates/payment_result" })
  end

  def random_new
    render({ :template => "calc_templates/random_new" })
  end

  def random_result
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f
    @range = rand(@min..@max)
    
    render({ :template => "calc_templates/random_result" })
  end
end

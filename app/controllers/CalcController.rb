class CalcController < ApplicationController

  def square

    render({ :template => "calc_templates/square"})
  end

  def square_results

    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num ** 2

    render({ :template => "calc_templates/square_results"})

  end

  def square_root

    render({ :template => "calc_templates/square_root"})

  end
  

  def square_root_results

    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num ** 0.5

    render({ :template => "calc_templates/square_root_results"})

  end

  def random

    render({ :template => "calc_templates/random"})

  end

  def random_results

    @min_num = params.fetch("user_min").to_f
    @max_num = params.fetch("user_max").to_f
    @the_result = rand(@min_num..@max_num)

    render({ :template => "calc_templates/random_results"})

  end

    def payment

    
    render({ :template => "calc_templates/payment"})

    end
  
    def payment_results
    
    @apr = params.fetch("apr").to_f/100/12
    @years = params.fetch("years").to_f * 12
    @principal = params.fetch("principal").to_f

    @monthly = (@apr*@principal)/(1-(1+@apr)**(-@years))

    render({ :template => "calc_templates/payment_results"})

    end
    def homepage

      render({ :template => "calc_templates/square"})

    end
  end
    

  

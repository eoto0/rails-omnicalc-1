class CalcController < ApplicationController

  def square

    render({ :template => "calc_templates/square"})

  def square_results

    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num ** 2

    render({ :template => "calc_templates/square_results"})

  def square_root

    render({ :template => "calc_templates/square_root"})

  def square_root_results

    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num ** 0.5

    render({ :template => "calc_templates/square_root_results"})

  def random

    render({ :template => "calc_templates/random"})

  def random_results

    @min_num = params.fetch("user_min").to_f
    @max_num = params.fetch("user_max").to_f
    @the_result = rand(@min_num..@max_num)

    render({ :template => "calc_templates/random_results"})

    def payment

    

    render({ :template => "calc_templates/payment"})
  
    def payment_results


    render({ :template => "calc_templates/payment_results"})
    

  

require "sinatra"
require "sinatra/reloader"

get("/") do
  "hello there"
  erb(:hello)
end

get("/goodbye") do
  erb(:bye)
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @the_num = params.fetch("users_number").to_f
  
  @the_result = @the_num ** 2
  erb(:square_results)
end


get("/square_root/new") do
  erb(:new_root_calc)
end

get("/square_root/results") do
  @the_num = params.fetch("users_number2").to_f
  
  @the_result = @the_num ** 0.5
  erb(:root_results)
end

get("/payment/new") do
  erb(:pay_calc)
end

get("/payment/results") do
  @per = params.fetch("apr").to_f
  @apr1 = params.fetch("apr").to_f / 100 
  @apr2 = @apr1/12
  @apr = @apr2
  @years = params.fetch("years").to_f 
  @prin = params.fetch("principal").to_f 
  @periods = @years * 12

  @numerator = @apr * @prin
  @denominator1 = 1
  @denominator2 = 1.0 + @apr
  @denominator3 = @denominator2 ** -@periods
  @denominator4 = @denominator1 - @denominator3
  @pay = @numerator/@denominator4
  
  erb(:pay_results)
end

get("/random/new") do
  erb(:rand_calc)
end

get("/random/results") do
  @min = params.fetch("min").to_f
  @max = params.fetch("max").to_f
  
  @random = rand(@min..@max)
  erb(:rand_results)
end

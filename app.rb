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

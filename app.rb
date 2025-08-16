require "sinatra"
require "sinatra/reloader"

get("/") do
erb(:homepage)
end

get("/rock") do

moves = ["rock","paper","scissors"]

@comp_move = moves.sample

  if @comp_move == "rock"
    @result = "tied"
  elsif @comp_move == "paper"
    @result = "lost"
  else
    @result = "won"
  end

erb(:zebra)
end

get("/paper") do

moves = ["rock","paper","scissors"]

@comp_move = moves.sample

if @comp_move == "rock"
  @result = "won"
elsif @comp_move == "paper"
  @result = "tied"
else
  @result = "lost"
end

erb(:giraffe)

end

get("/scissors") do

moves = ["rock","paper","scissors"]

@comp_move = moves.sample

if @comp_move == "rock"
  @result = "lost"
elsif @comp_move == "paper"
  @result = "won"
else
  @result = "tied"
end

erb(:rhino)

end

require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
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

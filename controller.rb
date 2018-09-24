require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")

require_relative("./models/gameRPS")
also_reload("./models/*")



get '/compare/:player1/:player2' do
  game1 = GameRPS.new(params[:player1], params[:player2])
  @gameResult = game1.compare()
  erb(:result)
end

get '/' do
  erb(:home)
end

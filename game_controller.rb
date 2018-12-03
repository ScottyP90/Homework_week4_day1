require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/game.rb')
also_reload('./models/*')

# get '/rock/sissors' do
#   return "rock wins!"
# end

get '/play/:option1/:option2' do
  result1 = params[:option1]
  result2 = params[:option2]
  game = Game.new(result1, result2)
  @game_result = game.result
  erb (:results)
end

get '/' do
  erb(:welcome_home)
end

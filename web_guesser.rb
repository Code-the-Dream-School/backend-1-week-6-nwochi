require "sinatra"
enable :sessions

get '/' do
    secret_number = rand(101)
    guess_collection = []
    secret_number = session[:secret_number]
    guess_collection = session[:guess_collection]
    erb :guesses_so_far
end

post '/guesses' do
    @guesses = params[:guesses]
    erb :game_completion
    erb :guesses_so_far
end


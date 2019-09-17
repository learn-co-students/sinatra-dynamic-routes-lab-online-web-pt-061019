require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    erb :reversename_name
  end

  get '/square/:number' do 
    erb :square_number
  end

  get '/say/:number/:phrase' do 
    erb :say_number_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    erb :say_word1_to_word5
  end

  get '/:operation/:number1/:number2' do 
    erb :operation_number1_number2
  end

end
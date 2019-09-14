require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
 
  get '/reversename/:name' do
    user_name = params[:name]
    reversed_name = user_name.reverse
    reversed_name
  end

  get '/square/:number' do 
    squared_num = params[:number].to_i ** 2
    "#{squared_num}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i 
    phrase = params[:phrase]
    result = ""
    number.times do
      result += phrase
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    word1 + " " + word2 + " " + word3 + " " + word4 + " "  + word5 + "."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if params[:operation] == "add"
      result = number1 + number2
    elsif params[:operation] == "subtract"
      result = number1 - number2
    elsif params[:operation] == "multiply"
      result = number1 * number2
    else params[:operation] == "divide"
      result = number1 / number2
    end
    "#{result}"
  end

end
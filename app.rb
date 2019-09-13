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

end
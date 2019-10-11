require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @user_name = params[:name].reverse
    @user_name
  end

  get '/square/:number' do
    @square_num = params[:number].to_i ** 2
    "#{@square_num}"
  end

  get '/say/:number/:phrase' do 
    result = ''
    params[:number].to_i.times do
      result += params[:phrase]
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
     operation = params[:operation]
     number1 = params[:number1].to_i
     number2 = params[:number2].to_i
     if operation == "add"
        result = number1 + number2
     elsif operation == "subtract"
        result = number1 - number2
     elsif operation == "multiply"
      result = number1 * number2
     elsif operation == "divide"
        result = number1 / number2
     else
        result = "Correct operation!"
     end
        result.to_s
  end
end
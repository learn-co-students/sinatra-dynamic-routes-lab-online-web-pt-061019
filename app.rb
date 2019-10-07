require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    result = ''
    params[:number].to_i.times do
      result += params[:phrase]
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @first = params[:word1]
    @second = params[:word2]
    @third = params[:word3]
    @fourth = params[:word4]
    @fifth = params[:word5]
    "#{@first} "+"#{@second} "+"#{@third} "+"#{@fourth} "+"#{@fifth}."
  end

  get '/:operation/:number1/:number2' do
    @operator = params[:operation]
    @value_1 = params[:number1].to_i
    @value_2 = params[:number2].to_i
    if @operator == "add"
      @result_1 = @value_1 + @value_2
      "#{@result_1}"
    elsif @operator == "subtract"
      @result_2 = @value_1 - @value_2
      "#{@result_2}"
    elsif @operator == "multiply"
      @result_3 = @value_1 * @value_2
      "#{@result_3}"
    elsif @operator == "divide"
      @result_4 = @value_1/@value_2
      "#{@result_4}"
    end
  end

end

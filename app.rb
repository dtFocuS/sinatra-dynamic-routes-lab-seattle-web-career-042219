require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    @target = ""
    @number.to_i.times {@target += "#{@phrase}"}
    @target
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    @target
    if @operation == 'multiply'
      @target = @number1.to_i * @number2.to_i
    elsif @operation == 'subtract'
      @target = @number1.to_i - @number2.to_i
    elsif @operation == 'divide'
      @target = @number1.to_i / @number2.to_i
    else
      @target = @number1.to_i + @number2.to_i
    end
    @target.to_s
  end

end

require_relative 'config/environment'
require 'pry'

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

  get '/say/:number/:phrase' do 
    @number = params[:number]
    @phrase = params[:phrase]
    phrarray = []
    until phrarray.count == @number.to_i do 
      phrarray << @phrase
    end 
    return phrarray
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    
  end 
  
end

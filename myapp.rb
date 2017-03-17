require 'sinatra'
require_relative 'phone_number'

get '/' do
  slim :index
end

post '/' do
  @number = params[:number]
  @normalized = PhoneNumber.new(@number).normalized
  slim :index
end
